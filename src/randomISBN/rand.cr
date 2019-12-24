class RandNum
  def fromZero(n=1)
    rand_nums = (1..n).map{rand(0..9)}
    rand_nums.join("")
  end
  def fromOne(n=1)
    rand_nums = (1..n).map{rand(1..9)}
    rand_nums.join("")
  end
end

# game = RandNum.new
# puts game.zeroToNum 6
# puts game.oneToNum 6