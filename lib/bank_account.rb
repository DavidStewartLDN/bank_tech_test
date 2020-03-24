require_relative "account_summary.rb"

class BankAccount

  attr_reader :total

  def initialize()
    @total = 0
    @statement = AccountSummary.new
  end

  def deposit(amount)
    @total += amount
  end

  def withdraw(amount)
    @total -= amount
  end

  def print_statement
    puts @statement.print_statement
  end

end