require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new }


  it "should store a credit transaction" do
    subject.credit = 10
    expect(subject.credit).to eq 10
  end

  it "should store a debit transaction" do
    subject.debit = 10
    expect(subject.debit).to eq 10
  end
  # it 'has a date that is today' do
  #   expect(transaction.date).to eq (Date.today.strftime("%d/%m/%Y"))
  # end

end
