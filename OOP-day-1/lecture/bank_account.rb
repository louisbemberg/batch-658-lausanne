class BankAccount
  attr_writer :balance # mauvaise idée
  attr_reader :balance # bonne idée

  def initialize
    @balance = 0
  end

  def add_money(amount)
    @balance += amount
  end
end

account = BankAccount.new
account.add_money(100000000000) # mauvaise idée!
account.balance += 1000000000 # mauvaise idée!!
