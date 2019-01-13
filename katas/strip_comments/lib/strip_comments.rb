def strip_comments(input, markers)
  input.gsub(/\s+[#{markers.join}].*/, "")
end
