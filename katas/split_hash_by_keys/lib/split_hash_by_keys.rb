def split_hash_by_keys(hash, *keys)
  raise "Specified keys do not exist in passed Hash!" unless (keys - hash.keys).empty?
  hash.slice_before { |key, value| keys.include?(key) }.map { |array| Hash[array] }
end
