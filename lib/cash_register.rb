class CashRegister

  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount
    @items = []
  end


  def add_item(title, price, quanitity = 1)
  self.total += price * quanitity
  quanitity.times do
    @items << title
  end
end

  def apply_discount
    if dicount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
       "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def total
     @total
  end

  def void_last_transaction
    @total = total - self.total
  end

end
