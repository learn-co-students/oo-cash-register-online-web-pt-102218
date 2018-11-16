require "pry"

class CashRegister
  attr_accessor :total, :discount

  @@basket = Hash.new

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
  end

def total
  @total
end

def add_item(title, price, quantity = 1)
  @@basket[title] = [price, quantity]
    @@basket.each do |item, value|
      if quantity > 1
      @total = total + value.inject(:*)
      end
    end
end




end
