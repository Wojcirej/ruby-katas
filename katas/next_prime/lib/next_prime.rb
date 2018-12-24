require 'prime'
def next_prime(n)
  Prime.find { |prime| prime > n }
end
