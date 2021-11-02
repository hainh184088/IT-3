class Menu
  attr_accessor :name
  attr_accessor :price
  # def initialize(name,price)
  #   self.name = name
  #   self.price = price
  # end
  def get_total_price(count)
    if not (count.is_a? Integer and count.positive?())
      return "Wrong count"
    elsif count < 3
        total_price = count*self.price
      else total_price = count*self.price - 10000
    end
      return "#{self.name} #{total_price}vnd"
  end
end

menu1= Menu.new
menu1.name = "Pho"
menu1.price = 30000
puts menu1.get_total_price(3)