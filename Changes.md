0.0.4
-------

- Support for key-value pairs with expiry
  commands supported - [set, get, setex]

- Support for set operations
  commands supported - [sadd, smembers, spop, srem]
  command supported (not supported by redis) - [sadd_with_expire] for expiring individual elements in a set

0.0.3
-------

- Support hash operations
  commands supported - [hgetall, hincrby, hget, hset]

- Support list operations
  commands supported - [lpopm, ltrim, lpush, lrange, rpop, rpush]
