class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name:,price:)
    self.name = name
    self.price = price
  end
  def get_total_price(count)
    if not (count.is_a? Integer and count.positive?())
      return "Wrong count"
    elsif count < 3
        total_price = count*self.price
      else total_price = count*self.price - 10000
    end
      return "#{self.name}(#{self.size}) #{total_price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size

  def initialize(name:,price:,size:)
    super(name: name,price: price)
    self.size=size
  end
end

drink1 = Drink.new(name:"Tra", price:5000, size:"Sサイズ")
drink2 = Drink.new(name:"Tra", price:10000, size:"Mサイズ")
menus =[drink1,drink2]
menus.each do |menu|
  puts menu.get_total_price(1)
end