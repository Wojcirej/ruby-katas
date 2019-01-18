class Calc
  {
    zero: 0,
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9
  }.each do |key, value|
    define_method(key) { operation ? operation.call(value) : (@number ||= value ; self ) }
  end

  {
    plus: :+,
    minus: :-,
    times: :*,
    divided_by: :/
  }.each do |method, operator|
    define_method(method) { @operation ||= lambda { |value| number.send(operator, value) }; self }
  end

  private
  attr_reader :number, :operation
end
