require "bank_account.rb"

describe BankAccount do

  let(:statement){ double :statement, transaction_history: ["24/03/2020||1000|| ||1000", "24/03/2020|| ||50||950"] }
  subject {described_class.new(statement: statement)}

  describe " #deposit" do
    it "should store the amount given into the total value" do
      allow(statement).to receive(:store_transaction)
      subject.deposit(1000)
      expect(subject.total).to eq (1000)
    end
  end

  describe " #withdraw" do
    it "should deduct the amount given from the total value" do
      allow(statement).to receive(:store_transaction)
      subject.deposit(1000)
      subject.withdraw(600)
      expect(subject.total).to eq (400)
    end
  end

  describe " #print_statement" do

    it "should return account statement with line breaks with deposit" do
      date = Time.now.strftime("%d/%m/%Y")
      allow(statement).to receive(:store_transaction)
      allow(statement).to receive(:print_statement) {"date || credit || debit || balance\n#{date}|| ||50||950\n#{date}||1000|| ||1000\n"}
      expect{subject.print_statement}.to output("date || credit || debit || balance\n#{date}|| ||50||950\n#{date}||1000|| ||1000\n").to_stdout
    end

  end

end