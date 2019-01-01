def hex_to_bin(hex_string)
  hex_string
  .sub!(/^0*/, '')
  .chars
  .reverse
  .each_with_index
  .map { |char, index| (16 ** index) * determine_number(char) }
  .sum
  .to_s(2)
end

def determine_number(char)
  char.ord >= 48 && char.ord <= 57 ? char.ord - 48 : char.downcase.ord - 87
end
