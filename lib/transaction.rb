class Transaction

  attr_reader :date
  attr_accessor :credit, :debit

  def intiialize
    @date = Date.today
    @credit = nil
    @debit = nil
  end

  def date
    @date = Date.today.strftime("%d/%m/%Y")
  end

  def credit(amount)
    @credit = amount
  end

  def debit(amount)
    @debit = amount
  end
end
