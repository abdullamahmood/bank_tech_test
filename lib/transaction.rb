require 'date'

class Transaction

  attr_accessor :credit, :debit, :date

  def intiialize
    @date = nil
    @credit = 0
    @debit = 0
  end

  # def date
  #   @date = Date.today.strftime("%d/%m/%Y")
  # end

end
