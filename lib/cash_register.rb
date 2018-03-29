require 'pry'

class CashRegister

  attr_accessor :total, :discount
  items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total = self.total + (price * quantity)
  end

  def apply_discount
    if discount != 0
      self.total = (total - (total * (discount.to_f / 100))).to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    new_register = CashRegister.new
    items = items + new_register.add_item(title, price, quantity = 1)
  end

  def void_last_transaction
  end

end
