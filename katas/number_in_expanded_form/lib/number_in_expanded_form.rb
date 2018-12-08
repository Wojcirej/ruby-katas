def number_in_expanded_form(number)
  raise ArgumentError.new("Must be greater than 0.") if number <= 0
  raise ArgumentError.new("Only integers are accepted.") if !number.is_a?(Integer)
  number
  .digits
  .each_with_index.map { |digit, index| (10 ** index) * digit }
  .reject(&:zero?)
  .reverse
  .join(' + ')
end
