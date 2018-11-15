class CashRegister
  
  attr_accessor :total,:discount, :last_tranasction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end
  
  def add_item(item, price, quantity = 1)
    item_hash = {}
    
    item_hash[:item] = item
    item_hash[:price] = price
    item_hash[:quantity] = quantity
    
    @cart << item_hash
    @last_tranasction = @total += price * quantity
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end
  
  def items
    item_names = []
    @cart.each do | item_info |
   
      for qty in 1..item_info[:quantity] 
        item_names << item_info[:item]
      end 
    end 
    item_names
  end 
      
  def void_last_transaction
    @total = @total - @last_tranasction
  end
end

 
 
 
    
    
  
  
  
  
  
  

