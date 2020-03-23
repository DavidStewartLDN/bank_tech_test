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
end