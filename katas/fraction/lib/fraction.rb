class Fraction
  class DivisionByZero < StandardError; end
  class IllegalDenominator < StandardError; end

  attr_reader :numerator, :denominator

  def initialize(numerator, denominator)
    raise IllegalDenominator.new("Denominator cannot be zero") if denominator.zero?
    cancel_down(numerator, denominator)
  end

  def +(fraction)
    new_numerator = (self.numerator * fraction.denominator) + (self.denominator * fraction.numerator)
    new_denominator = self.denominator * fraction.denominator
    Fraction.new(new_numerator, new_denominator)
  end

  def -(fraction)
    new_numerator = (self.numerator * fraction.denominator) - (self.denominator * fraction.numerator)
    new_denominator = self.denominator * fraction.denominator
    Fraction.new(new_numerator, new_denominator)
  end

  def *(fraction)
    new_numerator = self.numerator * fraction.numerator
    new_denominator = self.denominator * fraction.denominator
    Fraction.new(new_numerator, new_denominator)
  end

  def /(fraction)
    raise Fraction::DivisionByZero.new("Potential division by zero") if fraction.numerator.zero?
    self * fraction.reverse
  end

  def reverse
    Fraction.new(denominator, numerator)
  end

  def reverse!
    temp = self.numerator
    self.numerator = self.denominator
    self.denominator = temp
    self
  end

  def improper_fraction?
    numerator.abs > denominator.abs
  end

  def negative?
    numerator * denominator < 0
  end

  def to_s
    return "1" if numerator == denominator
    sign = negative? ? "-" : ""
    return "#{sign}#{numerator.abs}/#{denominator.abs}" unless improper_fraction?
    number = numerator / denominator
    new_numerator = numerator % denominator
    "#{sign}#{number} #{new_numerator.abs}/#{denominator.abs}"
  end

  def to_f
    numerator.to_f / denominator.to_f
  end

  def ==(fraction)
    self.numerator == fraction.numerator && self.denominator == fraction.denominator
  end

  private

  attr_writer :numerator, :denominator

  def cancel_down(numerator, denominator)
    gcd = greatest_common_divisor(numerator.abs, denominator.abs)
    @numerator = numerator / gcd
    @denominator = denominator / gcd
  end

  def greatest_common_divisor(a, b)
    return a if b.zero?
    greatest_common_divisor(b, a % b)
  end
end
