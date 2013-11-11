# Redi2casa

Redis datastructures using Cassandra

## Installation

Add this line to your application's Gemfile:

    gem "cassandra-cql", :git => "git://github.com/vireshas/cassandra-cql.git"
    gem "redi2casa", :git => "git://github.com/vireshas/redi2casa.git"

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install redi2casa

## Usage
#### create these tables
    cqlsh: create table sets(namespace text primary key, key map<text, text>);
    cassandra-cli: create column family counters with column_type = 'Standard' and comparator = 'UTF8Type' and default_validation_class = 'CounterColumnType' and key_validation_class = 'UTF8Type';

### Now you can
    require "redi2casa"
    r = Redi2casa.new "127.0.0.1:9160", {:keyspace => 'keyspace1'}

#### hincrby & hget

    Increment: r.hincrby "c", "e", 10
    Decrement: r.hincrby "c", "e", -10
    r.hget "c", "e" or r.hget "c", "e", "counters"     #counters is the default type

#### hset & hget

    r.hset "a", "b", "hello_world"
    r.hget "a", "b", "sets"

#### hgetall

    r.hgetall "c" or r.hgetall "c", "counters"     #counters is the default type
    r.hgetall "a", "sets"


#### lpush, ltrim, lpop, lrange

    r.lpush "a", "hello"
    r.lpush "a", "hello1"
    r.lpush "a", "hello2"
    r.lrange "a", 0, -1
    r.lpop "a"
    r.ltrim "a", 0, 1
    
#### rpush, rpop
    
    r.rpush "a", "hello3"
    r.rpop "a"
    r.lrange "a", 0, -1
    
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
