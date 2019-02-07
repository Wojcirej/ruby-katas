def find_the_odd_int(numbers)
  numbers.each_with_object(Hash.new(0)) { |number, counts| counts[number] += 1 }.find { |key, value| value.odd? }.first
end
