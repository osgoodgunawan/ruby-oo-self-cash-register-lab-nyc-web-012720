
class CashRegister
    # attr_writer  :total
    attr_accessor :discount, :total ,:items, :transaction
    

    def initialize(discount=0)
        @discount= discount
        @total=0
        @items=[]

        @transaction
    end
    
    def add_item (title,price,quant=1)
        @total+=price * quant

        quant.times do
            @items.push(title)
        end
         @transaction= price * quant
        #  self.transection=price *quant
    end

    def apply_discount
        if @discount>0
        @total*=(1-@discount/100.00)
        return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total-=@transaction
        # self.total-=self.transection
    end



    
end
