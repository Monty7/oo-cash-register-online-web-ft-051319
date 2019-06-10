require 'pry'
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity
  
 # @@items = []
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 0)
    #binding.pry
   
    @quantity = quantity
    if @quantity > 0
      @quantity.times do
        @items << title
      end
    end
    if @quantity > 0
      price_increased = price * quantity
      @total += price_increased
    else
      @total += price
    end
  end
  
  def apply_discount
    if @discount > 0
      discounted_rate = @total * self.discount * 0.010
      @total -= discounted_rate 
      "After the discount, the total comes to $#{(@total).round}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
end