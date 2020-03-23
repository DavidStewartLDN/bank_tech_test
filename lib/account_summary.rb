class AccountSummary

  attr_reader :transaction_history

  def initialize()
    @transaction_history = []
  end

  def store_transaction(type, amount, date, total)
    statement_line = date.to_s + "||" + amount.to_s + "|| ||" + total.to_s
    @transaction_history.push(statement_line)
  end

end