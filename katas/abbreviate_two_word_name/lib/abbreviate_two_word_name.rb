def abbreviate_two_word_name(name)
  name.split.map { |word| word[0].upcase }.join(".")
end
