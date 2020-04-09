require 'pry'
class CashRegister
  @@all =[]
 attr_accessor :discount ,:employee_discount,:total, :quantity, :title, :items

  def initialize(discount = 0)
    @employee_discount = employee_discount
    @total = 0
    @discount =discount
    @quantity = quantity
    @title = title
    @items = []
  end

  def total
    @total
   end

   def add_item( title,price, quantity = 1)

     @total =(price * quantity) + @total
    quantity.times do
      @items << title
    end
end

def apply_discount
  # binding.pry
  if @discount != 0
    @total = @total - (@total * @discount/100)
    return "After the discount, the total comes to $#{@total}."
  #  binding.pry
  else
    return "There is no discount to apply."
  end
end
  def items


  end
end
#
