def weight_to_weight(string)
  string.split(' ').map do |number|
    { "#{number}" => number.chars.map(&:to_i).sum }
  end.sort_by do |hash|
    hash.keys.first
  end.sort_by do |hash|
    hash.values.first
  end.map { |hash| hash.keys.first }.join(' ')
end
