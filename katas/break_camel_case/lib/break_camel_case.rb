def break_camel_case(camel_case_string)
  camel_case_string.split(/(?=[A-Z])/).join(' ')
end
