class CashRegister


attr_accessor :total, :discount, :title, :price, :itmes

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end
  
  def discount
    @discount
  end
  
  def title
    @title
  end
  
  def quantity
    @quantity
  end
  
  def add_item (title, price, quantity = 1)
    quantity.times do 
      @items << title
    end
    if quantity == 0
      @total = total + price
    else quantity > 0
      @total = total + (price * quantity)
    end
  end
  
  def apply_discount
    if @discount > 0
      @total = @total - (@total * (@discount/100.000))
      "After the discount, the total comes to $800."
    elsif @discount = 0
    "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @total - @total
  end
end
