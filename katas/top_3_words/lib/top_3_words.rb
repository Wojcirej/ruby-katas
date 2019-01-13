def top_3_words(text)
  text.scan(/[A-Za-z']+/)
    .select { |x| /[A-Za-z]+/ =~ x }
    .group_by { |x| x.downcase }
    .sort_by { |k, v| -v.count }
    .first(3)
    .map(&:first)
end
