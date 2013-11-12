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

    install cassandra 20x
    from the cloned location execute:
    cqlsh -f cqlsh_cmds --debug
    cassandra-cli -k redi2casa -f cassandra_cli_cmds
    
#### you're good to go

    require "redi2casa"
    r = Redi2casa.new "127.0.0.1:9160", {:keyspace => 'keyspace1'}  
    
    Available:  [hset, hget, hincrby, lpush, ltrim, lpop, lrange, rpush, rpop]

    You should be passing an extra param(hash) when you call hget to retrieve a hash    
  
    r.hset "a", "b", "hello_world"
    r.hget "a", "b", "hash"  #the last parameter is needed at the moment  
    
  You can find more examples here: https://gist.github.com/vireshas/99bc322cf0ac42fbf7ee  

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
