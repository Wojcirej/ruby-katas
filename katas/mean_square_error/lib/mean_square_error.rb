def mean_square_error(array1, array2)
  array1.zip(array2).map { |x, y| (x - y).abs ** 2 }.sum.to_f / array1.size
end
