class BonusDrink
  def self.total_count_for(amount)
    sum = amount
    bonus = amount / 3
    remain = amount % 3
    while bonus != 0 do
      sum += bonus
      temp = bonus
      bonus = (temp+remain) / 3
      remain = (temp+remain) % 3
    end
    return sum
  end
end

puts BonusDrink.total_count_for(100)