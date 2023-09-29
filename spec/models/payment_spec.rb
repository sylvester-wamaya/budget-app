require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'validations' do
    before :each do
      @payment = Payment.new(amount: 100, name: 'Test Payment')
    end
    it 'Amount should be present' do
      @payment.amount = nil
      expect(@payment).to_not be_valid
    end
    it 'Name should be present' do
      @payment.name = nil
      expect(@payment).to_not be_valid
    end
  end
end
