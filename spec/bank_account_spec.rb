require "bank_account.rb"

describe BankAccount do
  describe " #deposit" do
    it "should store the amount given into the total value" do
      subject.deposit(1000)
      expect(subject.total).to eq (1000)
    end
  end

  describe " #withdraw" do
    it "should deduct the amount given from the total value" do
      subject.deposit(1000)
      subject.withdraw(600)
      expect(subject.total).to eq (400)
    end
  end

  describe " #print_statement" do
    it "should return account statement with line breaks" do
      expect{subject.print_statement}.to output("date || credit || debit || balance\n").to_stdout
    end
  end

end