def best_travel(t, k, ls)
  ls.combination(k).collect { |distance_sum| distance_sum.inject(:+) }.reject { |distance| distance > t }.max
end
