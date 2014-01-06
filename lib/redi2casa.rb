require "redi2casa/version"
require "cql"

Gem.find_files("redi2casa/*.rb").each { |path| require path }

class Redi2casa
  def initialize(hosts, keyspace)
    @hosts = hosts
    @keyspace = keyspace
    connect
  end

  def connect
    @db_conn =  Cql::Client.connect(:hosts => @hosts)
    @db_conn.use(@keyspace)
  end

  alias :reconnect :connect

  def parse_response(resp, key)
    resp.map {|entry| entry[key].to_s }.first
  end

  def execute query
    @failed ||= 0
    @db_conn.execute query
  rescue Cql::NotConnectedError, Cql::Io::ConnectionError, Cql::Io::ConnectionTimeoutError
    reconnect
    @failed += 1
    retry if @failed < 3
    raise
  rescue Cql::QueryError
    raise Redi2casaError.new("Cql::QueryError query:#{query}")
  ensure
    @failed = 0
  end
end

class Redi2casaError < RuntimeError
end
