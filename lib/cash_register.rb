require 'pry'
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def items
    @items
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times {@items << item}
    @prices << price
  end

  def apply_discount
    self.total = (self.total - (self.total * discount/100.00)).round
    if discount != 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

    def void_last_transaction
      self.total -= @prices.last
    end

end
