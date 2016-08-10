require_relative 'transaction_log'
require_relative 'transaction'

class Account


MIN_LIMIT = 0

attr_reader :balance

  def initialize
    @balance = 0
    @transaction_log = TransactionLog.new
  end

  def show_balance
    @balance
  end

  def deposit(amount)
    @transaction_log.credit(amount)
    @balance += amount
    self
  end

  def withdraw(amount)
    raise "Insufficient funds! Your balance will fall below £#{MIN_LIMIT}" if @balance - amount < MIN_LIMIT
    @transaction_log.debit(amount)
    @balance -= amount
    self
  end

end





# raise "Insufficient funds! Your balance is below £#{MIN_LIMIT}" if @balance < MIN_LIMIT
