require_relative 'transaction'

class TransactionLog

  def initialize
    @transactions = []

  end

  def credit
    @current_transaction = Transaction.new
    @current_transaction.credit(amount)
  end

  def debit
    @current_transaction = Transaction.new
    @current_transaction.debit(-amount)

  end

  def add_transaction
    @transactions << @current_transaction
  end

end
