class Bingo
  attr_accessor :B
  attr_accessor :I
  attr_accessor :N
  attr_accessor :G
  attr_accessor :O
  def random_array(from:,to:)
    return(from..to).to_a.sample(5)
  end

  def initialize
    self.B = self.random_array(from:1,to:15)
    self.I = self.random_array(from:16,to:30)
    self.N = self.random_array(from:31,to:45)
    self.G = self.random_array(from:46,to:60)
    self.O = self.random_array(from:61,to:75)
  end
end

bingo = Bingo.new
puts "B | I | N | G | O"

for i in 0..bingo.B.length-1
  print ("#{bingo.B[i]} | #{bingo.I[i]} | #{bingo.N[i]} | #{bingo.G[i]} | #{bingo.O[i]}\n")
end