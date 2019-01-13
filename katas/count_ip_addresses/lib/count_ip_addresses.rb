def count_ip_addresses(start, end_range)
  ip_to_int = lambda { |ip| ip.split('.').reduce(0) { |sum, octet| sum * 256 + octet.to_i } }
  ip_to_int.(end_range) - ip_to_int.(start)
end
