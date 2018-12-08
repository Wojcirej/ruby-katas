def int32_to_ipv4(int32)
  [24, 16, 8, 0].collect { |b| (int32 >> b) & 255}.join('.')
end
