=begin

Write a method which takes arguments:

hash
keys (comma-separated symbols or strings)
and it splits hash by given keys and returns array of hashes.

If a key given as an argument is not present in the hash, the method should
raise an exception

In case there are any empty hash after splitting, it should be removed from
resultant array.

For example:

# returns [ {:a=>1, :b=>2}, {:c=>3, :d=>4}, {:e=>5, :f=>6} ]
split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :c, :e )

#returns [ {:a=>1}, {:b=>2, :c=>3, :d=>4, :e=>5}, {:f=>6} ]
split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :b, :f )

#returns [ {"a"=>1, "b"=>2, "c"=>3}, {"d"=>4, "e"=>5, "f"=>6} ]
split_hash_by_key( { 'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4, 'e'=>5, 'f'=>6 }, 'd' )

#returns [ {:a => 1, :b => 2} ]
split_hash_by_key( {:a => 1, :b => 2}, :a )

# raises an exception
split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, 'b' )

=end

# My Solution
def split_hash_by_key(hash, *args)
  on = 0 ; result = [] ; r = {} ; seen = 0
  hash.each do |k,v|
    if k == args[on]
      seen += 1 ; on += 1
      result << r if r != {}
      r = {}
    end
    r[k] = v
  end
  return raise if seen != args.length
  result << r
  result
end

# Better Solution
def split_hash_by_key(hash, *args)
  raise Error unless (args - hash.keys).empty?
  hash.slice_before { |k,v| args.include? k }.map { |a| Hash[a] }
end
