class CashRegister
attr_accessor :total, :discount, :last_transaction
attr_reader :items

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(item, price, quantity=1)
quantity.times do
  self.items.push(item)
end
  self.total += price * quantity
  self.last_transaction = price * quantity
end

def apply_discount
  if(self.discount == 0)
  return "There is no discount to apply."
  else
  self.total -= self.total * self.discount / 100
  return "After the discount, the total comes to $#{self.total}."
  end
end

def void_last_transaction
  self.total-= self.last_transaction
end
end
