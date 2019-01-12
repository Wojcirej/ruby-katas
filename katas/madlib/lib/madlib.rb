String.class_eval do

  def madlib(name)
    return '' if self.empty?
    return self if name.empty?
    self.gsub(/\b(He|he|She|she|It|it|Her|her|Him|him)\b/i, name).capitalize_first_letter
  end

  def capitalize_first_letter
    letter = self.chars.find { |char| char.ord.between?(65, 90) || char.ord.between?(97, 122) }
    position = self.index(letter)
    self[position] = self[position].upcase
    return self
  end
end
