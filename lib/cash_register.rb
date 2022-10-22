
class CashRegister

    attr_accessor :discount, :total, :items, :last_transaction
    

    def initialize(discount=nil, total=0)
        @discount = discount
        @total = total
        @items = []
    end

    
    def add_item(title, price, quantity=1)
        @total += price * quantity
        quantity.times {@items << title}

        @last_transaction = price * quantity
    end

    def apply_discount
        if @discount.nil?
            return "There is no discount to apply."
        else
            @total -= (@total * @discount/100)
            return "After the discount, the total comes to $#{self.total}."
        end

    end

    def void_last_transaction
        @total -= @last_transaction
    end
end
