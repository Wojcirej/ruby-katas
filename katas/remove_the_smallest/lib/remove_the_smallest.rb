def remove_the_smallest(numbers)
  return [] if numbers.empty?
  copy = numbers.dup
  copy.delete_at(numbers.index(numbers.min))
  copy
end
