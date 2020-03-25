# This controls the transactions and stores them

class AccountSummary
  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def store_transaction(type, amount, total)
    date = Time.now.strftime('%d/%m/%Y')
    statement_line = create_statement_line(type, amount, total, date)
    @transaction_history.push(statement_line)
  end

  def create_statement_line(type, amount, total, date)
    if type == 'deposit'
      date + '||' + amount.to_s + '|| ||' + total.to_s
    elsif type == 'withdraw'
      date + '|| ||' + amount.to_s + '||' + total.to_s
    end
  end

  def print_statement
    transaction_history_headed = [].replace(@transaction_history).reverse
    header = 'date || credit || debit || balance'
    transaction_history_headed.unshift(header)
    transaction_history_headed.join("\n")
  end
end
