class Currency

     def initialize(amount, currency_code)
       @amount = amount
       @currency_code = currency_code
     end

     def  ==(other)
       if @amount == other.amount && @currency_code == other.currency_code
       end
     end

    def + (other)
       @amount =+ other.amount
       if @amount == other.currency_code
       else
         raise DifferentCurrencyCodeError, "you cant add currency from different countries."
       end
    end

    def - (other)
       @amount -= other.amount
        if @currency_code == other.currency_code
       else
        raise DifferentCurrencyCodeError "you can't subtract currency from different countries."
       end
    end

     def *(other)
         @value *= other
     end
end

 d1 = Currency.new(5,"dollar")
 d2 = Currency.new(20,"dollar")

d2.*(11)


 e1 = Currency.new(1,"euro")
 e2 = Currency.new(10,"euro")
