require 'pry'

class CashRegister 
    attr_accessor :discount, :total, :title, :price, :quantity, :items
    

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_item = []

    end 

    def add_item(title, price, quantity = 1)
        @title = title
        @price = price
        @quantity = quantity
        @total = total + (price * quantity)
        if quantity > 1
            i=0
            while i<quantity
             @items << @title 
             i +=1
            end 
        else
            @items << title
        end 
         @last_item = price * quantity
    end 

    def apply_discount()
        if @discount >0
        @discount = @discount / 100.00
        @total = @total - (@total * @discount)
         "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end 
    end 

     def void_last_transaction
        @items.delete_at(-1)
        self.total = self.total - @last_item
       
     end 
    
    
    

end 
