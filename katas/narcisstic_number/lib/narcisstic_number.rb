def narcisstic_number?(number)
  exponent = number.digits.size
  number.digits.map { |digit| digit ** exponent }.reduce(:+) == number
end
