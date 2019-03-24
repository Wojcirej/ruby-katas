def replace_with_alphabet_position(text)
  text.downcase.chars.map do |char|
    (char.ord).between?(97, 122) ? (char.ord - 96).to_s : ""
  end.reject!(&:empty?).join(" ")
end
