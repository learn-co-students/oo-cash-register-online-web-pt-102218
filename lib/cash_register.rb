class CashRegister

  attr_accessor :total, :discount, :last_transaction

  @@items = []

  def initialize(discount = 0)
    self.total = 0.00
    self.discount = discount
    self.last_transaction = 0
  end

  def add_item(title, price, num = 1)
    self.total += (price * num)
    self.last_transaction += (price * num)
    i = 1
    while i <= num
      self.items << title
      i += 1
    end
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    end
    self.total -= (self.total * (self.discount / 100.00))
    self.items.clear
    "After the discount, the total comes to $#{self.total.to_i}."
  end

  def items
    @@items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
