class CashRegister
    
    attr_accessor :total, :discount, :items
    
    def initialize(discount = 0)
        @total=0
        @items =[]
        @discount=discount
        discount
    end

    def add_item(itemName,price,quantity = 1)
        quantity.times{
            @items.push(itemName)
        }
        @lastprice=price
        
        @total+=price*quantity
    end

    def apply_discount
        if @discount>0
            @total=(@total*(100-@discount)/100.to_f).round
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total=@total-@lastprice
    end

end