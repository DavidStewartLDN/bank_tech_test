class AccountSummary

  attr_reader :transaction_history

  def initialize()
    @transaction_history = []
  end

  def store_transaction(type, amount, total)
    date = Time.now.strftime("%d/%m/%Y")
    if type == "deposit"
      statement_line = date + "||" + amount.to_s + "|| ||" + total.to_s
    elsif type == "withdraw"
      statement_line = date + "|| ||" + amount.to_s + "||" + total.to_s
    end
    @transaction_history.push(statement_line)
  end

  def print_statement
    transaction_history_headed = [].replace(@transaction_history)
    header = "date || credit || debit || balance"
    transaction_history_headed.unshift(header)
    transaction_history_headed.join("\n")
  end

end