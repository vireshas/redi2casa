# Redi2casa

Redis datastructures using Cassandra

## Installation

Add this line to your application's Gemfile:

    gem 'redi2casa'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install redi2casa

## Usage

  require "redi2casa"
  r = Redi2casa.new "127.0.0.1:9160", {:keyspace => 'keyspace1'}

# hincrby

  Increment: r.hincrby "c", "e", 10
  Decrement: r.hincrby "c", "e", -10

# hgetall

  r.hgetall "c"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
