0.1.1
-----

- Support for zset operations
  [ zadd, zrem, zrangebyscore, zscore]

0.1.0
------

- Support for hmget

0.0.9
------
- Fix bug in smembers which should return empty array instead of nil

0.0.8
------

- Remove support for counter deletion. Refer to below links for reason
  http://wiki.apache.org/cassandra/Counters
  http://stackoverflow.com/questions/13653681/apache-cassandra-delete-from-counter

- Fix typo in keyvalue deletion

0.0.7
------

- Rewrite bitwise operations to support clearbits
  [clear_bits] (alias clearbits)
- fix bugs in setbit
- alias incrby to incr

0.0.6
------

- Support bitwise operations
  [ get_bit, set_bit ] (alias getbit, setbit)
- counter operations incrby

0.0.5
------

- Hash rewrite and adding support for more operations
  [ hlen, hkeys, hdel ]
- Support for more set operations
  [ scard, sismember]


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
