def string_ends_with?(text, ending)
  text.chars.last(ending.size).join('') == ending
end
