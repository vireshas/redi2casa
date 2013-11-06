require "redi2casa/version"
require "cassandra-cql"

class Redi2casa
  def initialize(host, keyspace)
    @db_conn =  CassandraCQL::Database.new(host, keyspace)
  end
end
