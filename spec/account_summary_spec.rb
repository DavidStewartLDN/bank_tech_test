require "account_summary.rb"

describe AccountSummary do
  describe " #store_transaction" do
    it "it should take in transaction information and store in an array transaction_history" do
      date = Time.now.strftime("%d/%m/%Y")
      total = 1000
      subject.store_transaction("deposit", 1000, total)
      expect(subject.transaction_history[0]).to eq ("#{date}||1000|| ||1000")
    end

    it "it should take in transaction information and store in an array transaction_history" do
      date = Time.now.strftime("%d/%m/%Y")
      total = -1000
      subject.store_transaction("withdraw", 1000, total)
      expect(subject.transaction_history[0]).to eq ("#{date}|| ||1000||-1000")
    end
  end
  describe  " #print_statement" do
    it "returns the print statement with all transactions" do
      date = Time.now.strftime("%d/%m/%Y")
      total = 1000
      subject.store_transaction("deposit", 1000, total)
      expect(subject.print_statement).to eq("date || credit || debit || balance\n#{date}||1000|| ||1000")
    end

    it "returns the print statement with all transactions in reverse order" do
      date = Time.now.strftime("%d/%m/%Y")
      total = 1000
      subject.store_transaction("deposit", 1000, total)
      subject.store_transaction("withdraw", 500, 500)
      expect(subject.print_statement).to eq("date || credit || debit || balance\n#{date}|| ||500||500\n#{date}||1000|| ||1000")
    end
  end

end