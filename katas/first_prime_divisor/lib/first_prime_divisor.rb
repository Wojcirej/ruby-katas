require "prime"

def first_prime_divisor(number)
  step = 1
  while true
    prime = Prime.first(step).last
    return prime if (number % prime).zero?
    step += 1
  end
end
