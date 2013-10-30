<b>Creating a counters table</b>  
create column family counters with column_type = 'Standard' and comparator = 'UTF8Type' and default_validation_class = 'CounterColumnType' and key_vali[default@keyspace1] create column family counters with column_type = 'Standard' and comparator = 'UTF8Type' and default_validation_class = 'CounterColumnType' and key_validation_class = 'UTF8Type';  

<b>Connect to db and use keyspace1</b>  
db = CassandraCQL::Database.new('127.0.0.1:9160', {:keyspace => 'keyspace1'})  

<b>hgetall of 'a'</b>  
a = db.execute("select * from counters where KEY='a'")  
a.fetch {|i| puts i.to_hash.inspect}  

<b>hincrby 'a' by 1</b>  
a = db.execute("update counters set b = b + 1  where KEY='a'")  
a.fetch {|i| puts i.to_hash.inspect}  

<b>hincrby 'a' by -2</b>  
a = db.execute("update counters set b = b - 2  where KEY='a'")  
a.fetch {|i| puts i.to_hash.inspect}  

I didnt want to use insert to create a new entry (we might hit read-modify-write issues). I was trying to execute raw cql queries.
execute_cql_query seems likes one of the way. Creating a new entry is pending.  

