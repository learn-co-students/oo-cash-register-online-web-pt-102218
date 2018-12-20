class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction_amount 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = [ ]
  end
  
  def add_item(title, price, quantity = 1)
    if quantity > 1
      #putting in a while-loop counter to keep track of quantity of item
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total = @total + price * quantity
    @last_transaction_amount = @total
  end
  
  def apply_discount
    if discount > 0 
      @total = @total - (@total * (@discount/100.to_f))
      #this way works too: @total = ((100-discount.to_f)/100).to_f * @total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end 
  
  def void_last_transaction
    @total = @total - @last_transaction_amount
  end
  
end
