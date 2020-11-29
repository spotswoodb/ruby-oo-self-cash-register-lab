class CashRegister

    attr_accessor :items, :total, :price, :discount
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @price = []
    end

    def add_item(title, price, quantity=1)
        self.price << price
        if self.total += price * quantity
            @price << price * quantity
        end
        quantity.times do
            @items << title
        end
    end

    def apply_discount
        if discount > 0
            @take_off = (self.total * @discount)/100
            @total -= @take_off
            return "After the discount, the total comes to $#{total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.price[-1]
        if self.items == []
            self.total = 0.0
        end
    end 
end
