GOOD_MAP = [1, 2, 3, 3, 4, 10]
EVIL_MAP = [1, 2, 2, 2, 3, 5, 10]
def good_vs_evil(good, evil)
  good_worth = good.split(' ').map(&:to_i).each_with_index.map { |army, index| army.zero? ? 0 : army * GOOD_MAP[index] }.sum
  evil_worth = evil.split(' ').map(&:to_i).each_with_index.map { |army, index| army.zero? ? 0 : army * EVIL_MAP[index] }.sum
  return "Battle Result: Good triumphs over Evil" if good_worth > evil_worth
  return "Battle Result: Evil eradicates all trace of Good" if evil_worth > good_worth
  "Battle Result: No victor on this battle field"
end
