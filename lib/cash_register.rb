class CashRegister
  attr_accessor :discount, :total, :items, :prices

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    @prices << price * quantity
    i = 0
    while i < quantity
      @items << item
      i += 1
    end
  end

  def apply_discount
    if self.discount != nil
      self.total -= self.total * (self.discount / 100.to_f)
    else
      return "There is no discount to apply."
    end
    return "After the discount, the total comes to $#{self.total.to_i}."
  end

  def void_last_transaction
    self.total -= @prices.last
  end
end
