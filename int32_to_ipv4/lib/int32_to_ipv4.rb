def int32_to_ipv4(int32)
  return "0.0.0.#{int32}" if int32 < 256
  bits = int32.to_s(2).split('').reverse
  octets = bits.inject([[]]) { |arrays, item| arrays.last.size < 8 ? arrays.last << item : arrays << [item]; arrays }
  decimals = octets.map { |array| array.reverse.join.to_i(2) }.reverse
  return decimals.join('.')
end
