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

#### configuring cassandra

    create namespace: CREATE KEYSPACE redi2casa WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
    cqlsh: create table sets(namespace text primary key, key map<text, text>);
    cassandra-cli: create column family counters with column_type = 'Standard' and comparator = 'UTF8Type' and default_validation_class = 'CounterColumnType' and key_validation_class = 'UTF8Type';
    
### Now you can

    require "redi2casa"
    r = Redi2casa.new "127.0.0.1:9160", {:keyspace => 'keyspace1'}  

  You should keep one thing in mind while using hget with hash!, you should explicitly mention that you are using hget with hash  
  
    r.hset "a", "b", "hello_world"
    r.hget "a", "b", "hash"  #the last parameter is needed for hash  
    
  You can find more examples here: https://gist.github.com/vireshas/99bc322cf0ac42fbf7ee  

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
