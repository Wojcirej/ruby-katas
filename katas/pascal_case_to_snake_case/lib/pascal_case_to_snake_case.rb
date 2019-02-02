def pascal_case_to_snake_case(string)
  string.to_s.split(/(?=[A-Z])/).join('_').downcase
end
