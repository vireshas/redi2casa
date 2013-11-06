require "redi2casa/version"
require "cassandra-cql"
Gem.find_files("redi2casa/*.rb").each { |path| require path }

class Redi2casa
  def initialize(host, keyspace)
    @db_conn =  CassandraCQL::Database.new(host, keyspace)
  end

  def parse_response(response)
    response.fetch {|resp| return resp.to_hash.reject {|entry| entry == "KEY"}}
  end
end
