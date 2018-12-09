def find_parity_outlier(integers)
  outlier = integers.first(3).select { |number| number.odd? }.count < 2 ? :odd? : :even?
  integers.find(&outlier)
end
