class Calculator
  def evaluate(string)
    [' + ', ' - ', ' * ', ' / '].each do |op|
      if string.include?(op)
        return string.split(op).map { |s| evaluate(s) }.inject(op.strip)
      end
    end
  string.to_f
  end
end
