class Currency

  def initialize(value,currency_code,money_input)
    @value = value
    @currency_code = currency_code
    @money_input = money_input
  end

  def value
    if value.is_a? Float
      @value = value
    else value.is_a? Fixnum
      value = value.to_f
      return  @value
    end
  end

  def currency_code
    return @currency_code
  end

  def money_input
    return @money_input
  end

  def  ==(other)
    if @value == other.value && @currency_code == other.currency_code
    end
  end

  def add=(other)
    @value += other.value
    if @value == other.currency_code
    else
      raise DifferentCurrencyCodeError, "you cant add currency from different countries."
    end
  end

  def subtract=(other)
    @value -= other.value
    if @currency_code == other.currency_code
    else
        raise DifferentCurrencyCodeError "you can't subtract currency from different countries."
    end
  end

  def multiply=(other)
    if other.is_a? Float
      @value *= other
    elsif other.is_a? Fixnum
      other = other.to_f
      @value *= other
    else
      raise DifferentCurrencyCodeError "you can't subtract currency from different countries."
    end
  end
end

us_dollar_one = Currency.new(7,"dollar","$")
us_dollar_two = Currency.new(5,"dollar","$")


test_multiply = us_dollar_one.multiply=(7.6)

euro = Currency.new(1,"euro","€")
euro5 = Currency.new(1,"euro","€")
