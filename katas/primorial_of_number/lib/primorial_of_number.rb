def primorial_of_number(n)
  Prime.first(n).inject(:*)
end
