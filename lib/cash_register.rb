require 'pry'
class CashRegister

attr_accessor :total, :employee_discount, :title, :price


  def initialize(employee_discount = 0)
    @total = 0.00
    @employee_discount = employee_discount
    @items = []
  end

  def discount
    self.employee_discount
  end

  def add_item(title, price, quanitity = 1)
    self.total += price *quanitity
    quanitity.times do
      @items << title
    end
  end

  def apply_discount

    amount_discounted = @total * (employee_discount/100.0)
    self.total = @total - amount_discounted
   "After the discount, the total comes to $#{self.total}"
  end

end
