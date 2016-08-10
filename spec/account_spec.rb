require 'account'

describe Account do

	subject(:account) { described_class.new }

	describe '#balance' do
		it 'has an initial balance of 0' do
			expect(account.balance).to eq 0
		end
	end

	describe "#deposit" do

		# it { is_expected.to respond_to(:deposit).with(2).argument }

		it "should increase the balance" do
			expect{ account.deposit(5) }.to change{account.balance}.by 5
		end
	end

	describe "#withdraw" do

		# it { is_expected.to respond_to(:withdraw).with(2).argument }

		it "should decrease the balance" do
			account.deposit(5)
			expect{ account.withdraw(5) }.to change{account.balance}.by -5
		end

		it "raises an error if withdraw amount would push balance under #{Account::MIN_LIMIT}" do
			account.deposit(2)
			expect { account.withdraw(5) }.to raise_error "Insufficient funds! Your balance will fall below £#{Account::MIN_LIMIT}"
		end

		# it "raises an error if withdrawing while account is at or below #{Account::MIN_LIMIT}" do
		# 	expect { account.withdraw(5) }.to raise_error "Insufficient funds! Your balance is below £#{Account::MIN_LIMIT}"
		# end
	end

end
