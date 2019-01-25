def palindrome_chain_length(n)
  n.to_s == n.to_s.reverse ? 0 : 1 + palindrome_chain_length(n + n.to_s.reverse.to_i)
end
