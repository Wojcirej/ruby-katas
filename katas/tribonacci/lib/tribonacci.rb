def tribonacci(signature, n)
  return [] if n == 0
  return [signature[0]] if n == 1
  return signature.first(2) if n == 2
  return signature if n == 3
  sequence = signature
  n.times do
    sequence << sequence[-1] + sequence[-2] + sequence[-3]
  end
  return sequence.first(n)
end
