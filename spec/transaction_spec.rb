require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new }

  it 'has a date that is today' do
    expect(transaction.date).to eq (Date.today.strftime("%d/%m/%Y"))
  end

end
