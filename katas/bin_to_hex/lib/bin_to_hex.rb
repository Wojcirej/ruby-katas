def bin_to_hex(binary_string)
  binary_string
  .sub!(/^0*/, '')
  .chars
  .reverse
  .each_with_index
  .map { |digit, index| (2 ** index) * (digit.ord - 48) }
  .sum
  .to_s(16)
end
