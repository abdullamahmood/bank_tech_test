require_relative 'transaction'
require 'date'

class TransactionLog

  def initialize
    @transactions = []

  end

  def credit(amount)
    @current_transaction = Transaction.new
    @current_transaction.credit = amount
    @current_transaction.date = Date.today.strftime("%d/%m/%Y")
    add_transaction
    @current_transaction = nil
  end

  def debit(amount)
    @current_transaction = Transaction.new
    @current_transaction.debit = amount
    @current_transaction.date = Date.today.strftime("%d/%m/%Y")
    add_transaction
    @current_transaction = nil
  end

private

  def add_transaction
    @transactions << @current_transaction
  end

end
