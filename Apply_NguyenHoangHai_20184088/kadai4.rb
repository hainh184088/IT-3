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
      return "#{self.name} #{total_price}vnd"
  end
  def info
    return "#{self.name} #{total_price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size

  def initialize(name:,price:,size:)
    super(name: name,price: price)
    self.size=size
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
  def info
    return "#{self.name}(#{self.size}) #{total_price}vnd"
  end
end

drink1 = Drink.new(name:"Tra", price:5000, size:"Sサイズ")
drink2 = Drink.new(name:"Tra", price:10000, size:"Mサイズ")
menu1= Menu.new(name:"Pho", price:30000)
menu2 = Menu.new(name:"Bun cha", price:40000)
menu3 = Menu.new(name:"Banh mi", price:20000)
menu = [menu1,menu2,menu3,drink1,drink2]
menu.each_with_index do |val,index|
  puts "#{index} #{val.name} #{val.price}vnd"
end
puts ("メニューの番号を選択してください: ")
order = gets.to_i()
if (order.is_a? Integer and order.positive?() and order < menu.length)
  selected_order = menu[order]
  puts ("選択されたメニュー: #{selected_order.name}")
  puts ("お会計は#{selected_order.price}vndです")
else puts ("Wrong order!")
end