def digital_root(n)
  single_digit?(n) ? n : digital_root(n.digits.sum)
end

def single_digit?(n)
  n < 10
end
