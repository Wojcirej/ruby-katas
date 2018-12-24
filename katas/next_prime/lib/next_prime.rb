require 'prime'
def next_prime(n)
  return 2 if n < 2
  primes = Prime.each(n).map { |prime| prime }
  next_potential_prime = primes.last + 1
  while true
    return next_potential_prime if Prime.prime?(next_potential_prime)
    next_potential_prime += 1
  end
end
