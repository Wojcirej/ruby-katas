def rgb_to_hex_conversion(r, g, b)
  r = set_in_range(r)
  g = set_in_range(g)
  b = set_in_range(b)
  (r.to_s(16).rjust(2, '0') + g.to_s(16).rjust(2, '0') + b.to_s(16).rjust(2, '0')).upcase
end

def set_in_range(number)
  return number if number.between?(0, 255)
  return 255 if number > 255
  return 0 if number < 0
end
