class Currency

    def initialize(amount, currency_code)
      @amount = amount
      @currency_code = currency_code
    end


    def amount
      return  @amount
    end


    def currency_code
      return @currency_code
    end


    def  ==(other)
      if @amount == other.amount && @currency_code == other.currency_code
      end
    end






    def add=(other)
      @amount += other.amount
      if @amount == other.currency_code
      else
    raise DifferentCurrencyCodeError, "you cant add currency from different countries."
      end
    end


    def subtract=(other)
      @amount -= other.amount
       if @currency_code == other.currency_code
      else
       raise DifferentCurrencyCodeError "you can't subtract currency from different countries."
      end
    end


    def currency_code=(new_currency_code)
      @currency_code = currency_code
      raise
    end


end



us_dollar_one = Currency.new(1,"dollar")
us_dollar_two = Currency.new(5,"dollar")


us_dollar == us_dollar5


euro = Currency.new(1,"euro")
euro5 = Currency.new(1,"euro")
us_dollar == euro

class  DifferentCurrencyCodeError < StandardError
end
 #us_dollar.amount = 1
 #euro.amount = 1
