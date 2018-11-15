class CashRegister
  attr_accessor :total, :discount, :last_transaction
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do |i|
        @items << title
    end 
    @last_transaction = price
  end 
  
  def apply_discount
    if discount == 0
      result = "There is no discount to apply."
    else
      @total = ((100.0 - discount)/ 100) * @total
      result = "After the discount, the total comes to $#{@total.to_i}."
    end
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
    @total -= @last_transaction
  end 
end