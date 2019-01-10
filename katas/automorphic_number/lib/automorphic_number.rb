def automorphic_number(n)
  square = n ** 2
  square.digits.reverse.last(n.digits.size).join.to_i == n ? "Automorphic" : "Not!!"
end
