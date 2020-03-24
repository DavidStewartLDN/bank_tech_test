require_relative "account_summary.rb"

class BankAccount

  attr_reader :total

  def initialize(statement: AccountSummary.new)
    @total = 0
    @statement = statement
  end

  def deposit(amount)
    @total += amount
    @statement.store_transaction("deposit", amount, @total)
  end

  def withdraw(amount)
    @total -= amount
    @statement.store_transaction("withdraw", amount, @total)
  end

  def print_statement
    puts @statement.print_statement
  end

end