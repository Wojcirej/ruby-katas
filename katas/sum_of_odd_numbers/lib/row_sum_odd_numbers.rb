def row_sum_odd_numbers(n)
  return 1 if n == 1
  number_of_odd_numbers = (n * (n + 1)) / 2
  array_of_all_numbers = (1..(number_of_odd_numbers * 2)).to_a
  odd_numbers = array_of_all_numbers.select { |item| item.odd? }
  requested_odd_numbers = odd_numbers.last(n)
  sum = requested_odd_numbers.inject(0, :+)
  return sum
end
