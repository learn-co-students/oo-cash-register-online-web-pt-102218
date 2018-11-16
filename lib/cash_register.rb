require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction



  def initialize(discount = 0)
    @total = total
    @discount = discount
    @items = []
  end


def add_item(title, price, quantity=1)
  @total = @total + (price*quantity)
   quantity.times do
      @items << title
  end
  @last_transaction = price*quantity
end

def apply_discount
  a = @total*self.discount/100
  self.total -= a.to_i
  "After the discount, the total comes to #{total}."
end

def items
  @items
end


end
