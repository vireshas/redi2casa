CREATING a counters table
create column family counters with column_type = 'Standard' and comparator = 'UTF8Type' and default_validation_class = 'CounterColumnType' and key_vali[default@keyspace1] create column family counters with column_type = 'Standard' and comparator = 'UTF8Type' and default_validation_class = 'CounterColumnType' and key_validation_class = 'UTF8Type';

connect to db and use keyspace1
db = CassandraCQL::Database.new('127.0.0.1:9160', {:keyspace => 'keyspace1'})

hgetall of 'a'
a = db.execute("select * from counters where KEY='a'")
a.fetch {|i| puts i.to_hash.inspect}

increment 'a' by 1
a = db.execute("update counters set b = b + 1  where KEY='a'")
a.fetch {|i| puts i.to_hash.inspect}

decrement 'a' by 2
a = db.execute("update counters set b = b - 2  where KEY='a'")
a.fetch {|i| puts i.to_hash.inspect}

