require 'pry'
class CashRegister
  attr_accessor :total, :discount


  def initialize(discount =0)
    @total = 0
    @discount = discount
    @all=[]
  end

  def add_item(title, price, quantity = 1)
    @total = self.total + price*quantity
    @last_price = price*quantity
    quantity.times {@all<<title}
  end

  def apply_discount
    if @discount > 0
      @total = self.total - @discount*10
      return "After the discount, the total comes to $#{self.total}."
    end

    else
      return "There is no discount to apply."
    end

    def items
      @all
    end

    def void_last_transaction
      @total = self.total - @last_price
    end

end
