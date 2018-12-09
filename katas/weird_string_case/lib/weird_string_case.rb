def weird_string_case(string)
  string.split(" ").map do |word|
    word.chars.each_with_index { |char, index| char.upcase! if index.even? }.join
  end.join(" ")
end
