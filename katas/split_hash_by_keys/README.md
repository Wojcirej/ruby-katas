# Split hash by keys

### Description
Write a method which takes arguments:

* hash
* keys (comma-separated symbols or strings)
and it splits hash by given keys and returns array of hashes.

If a key given as an argument is not present in the hash, the method should raise an exception

In case there are any empty hash after splitting, it should be removed from resultant array.

### Examples
```ruby
split_hash_by_keys({ :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :b, :f) #=> [{:a=>1}, {:b=>2, :c=>3, :d=>4, :e=>5}, {:f=>6}]
split_hash_by_keys({ :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :c, :e) #=> [{:a=>1, :b=>2}, {:c=>3, :d=>4}, {:e=>5, :f=>6}]
split_hash_by_keys({:a => 1, :b => 2}, :a) #=> [{:a => 1, :b => 2}]
split_hash_by_key({ :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, 'b') #=> raises exception
```

### Link to kata on codewars.com
https://www.codewars.com/kata/52d0f9bc48155f574c0001b7/
