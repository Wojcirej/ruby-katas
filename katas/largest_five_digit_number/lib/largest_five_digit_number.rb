def largest_five_digit_number(digits)
  (0..digits.length).collect { |i| digits[i, 5].to_i }.max
end
