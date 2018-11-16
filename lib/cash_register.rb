require "pry"

class CashRegister
  attr_accessor :total, :discount, :items



  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
    @items = []
  end


def add_item(title, price, quantity=1)
  self.total += price * quantity
  #  quantity.times do
    #  @items << title
#    end
end



end
