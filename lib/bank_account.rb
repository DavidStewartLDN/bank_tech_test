class BankAccount

  attr_reader :total

  def initialize()
    @total = 0
  end

  def deposit(amount)
    @total += amount
  end



end