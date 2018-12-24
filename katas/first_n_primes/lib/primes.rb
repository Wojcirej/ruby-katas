class Primes

  attr_reader :n

  def self.first(n)
    return [2] if n == 1
    new(n).first
  end

  def first
    sieve.compact.first(n)
  end

  private

  def initialize(n)
    @n = n
  end

  def primes
    @primes ||= (0..range).to_a
  end

  def range
    @range ||= n * n
  end

  def sieve
    primes[0] = primes[1] = nil
    primes.each do |number|
      next unless number
      break if number * number > range
      (number * number).step(range, number) { |m| primes[m] = nil }
    end
    primes
  end
end
