def format_words_into_sentence(words)
  return '' if words.nil?
  words = words.reject(&:empty?)
  return '' if words.empty?
  return words.first if words.size == 1
  return words.join(' and ') if words.size == 2
  last_two = words.slice!(-2, 2)
  rest = words.join(', ')
  rest + ", " + last_two.join(' and ')
end
