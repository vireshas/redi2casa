r = Redi2casa.new([localhost], 'redi2casa')


# Do not mix counters and non-counter values in a single Hash

Hash - counters
---------------

  Increment: r.hicnrby "c", "e", 10
  r.hget "c", "e"  => 10
  Decrement: r.hincrby "c", "e", -10
  r.hget "c", "e"  => 0
  r.hincrby "c", "a", 100

  r.hgetall "c"  => { "a" => 100, "e" => 0 }

  ## r.hset does not work for counters as yet ##

Hash - Non-counters
-------------------

  r.hset "a", "b", "hello_world"
  r.hset "a", "b", "bye_world"
  r.hget "a", "b" =>  "hello_world"

  r.hgetall "a"  => {"a" => "hello_world", "b" => "bye_world"}

List
-----

  r.lpush "a", "hello"
  r.lpush "a", "hello1"
  r.rpush "a", "hello3"

  r.lrange "a", 0, -1 => ["hello", "hello1", "hello3"]
  r.lpop   "a"  => "hello"
  r.lrange "a", 0, -1 => ["hello1", "hello3"]

  r.rpop "a"  => "hello3"
  r.lrange "a", 0, -1 => ["hello1"]


Key-value pairs
---------------

  r.set "a", "welcome"
  r.get "a" => "welcome"

  r.setex "a", 10, "c"
  r.get "a" => "c"
 ### after 10 seconds
  r.get "a" => nil
