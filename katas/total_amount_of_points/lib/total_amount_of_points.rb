def total_amount_of_points(games)
  sum = 0
  games.each do |game|
    x, y = game.split(":")
    sum += 3 if x.to_i > y.to_i
    sum += 1 if x.to_i == y.to_i
  end
  sum
end
