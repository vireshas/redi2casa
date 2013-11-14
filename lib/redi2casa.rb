require "redi2casa/version"
require "cql"

Gem.find_files("redi2casa/*.rb").each { |path| require path }

class Redi2casa
  def initialize(hosts, keyspace)
    @db_conn =  Cql::Client.connect(:hosts => hosts)
    @db_conn.use(keyspace)
  end

  def parse_response(resp, key)
    resp.map {|entry| entry[key].to_s }.first
  end
end
