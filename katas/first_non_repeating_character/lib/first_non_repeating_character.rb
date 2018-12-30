def first_non_repeating_character(string)
  string.chars.find { |i| string.downcase.count(i) == 1 || string.upcase.count(i)==1 } || ""
end
