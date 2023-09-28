require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    before :each do
      @user = User.new(name: 'Test User', email: 'test@test.com', password: 'test123')
    end
    it 'Name should be present' do
      @user.name = nil
      expect(@user).to_not be_valid
    end
    it 'Email should be present' do
        @user.email = nil
        expect(@user).to_not be_valid
        end
    it 'Password should be present' do
        @user.password = nil
        expect(@user).to_not be_valid
    end
    end
end