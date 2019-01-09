class CashRegister

  attr_accessor :total, :discount, :prices, :items

  def initialize(discount = 0) # initialize discount with 0, not 20, that's where it starts
    @total = 0 #total instance
    @discount = discount #discount instance
    @items = [] #items array instance
  end

  def add_item(items, prices, quantity = 1)
    @prices = prices
    @total += prices * quantity
    if quantity > 1
      count = 0 # initialize count for adding items
      while count < quantity # create loop adding items into array
        @items << items
        count += 1
      end
    else
      @items << items # continue added items if list is complete
    end
  end

  def apply_discount
    if @discount > 0
      @discounted = (prices * discount)/100 # initialize the discount
      @total -= @discounted
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  # def items # <-- this isn't necessary, already called in add_item
  #   @items
  # end

  def void_last_transaction
    @total -= @prices #subtract prices from the total price
  end
end
