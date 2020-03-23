require "account_summary.rb"

describe AccountSummary do
  describe " #store_transaction" do
    it "it should take in transaction information and store in an array transaction_history" do
      date = "23/03/2020"
      total = 1000
      subject.store_transaction("deposit", 1000, date, 1000)
      expect(subject.transaction_history[0]).to eq ("23/03/2020||1000|| ||1000")
    end
  end
end