def digital_cypher_vol_3(message, code)
  key = code.zip(message.chars).map { |c, m| c - m.ord + 96 }.join
  len = (1..code.size).find { |x| (key[0, x] * code.size)[0, code.size] == key }
  key[0, len].to_i
end
