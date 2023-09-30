require 'rails_helper'
RSpec.describe Group, type: :model do
  describe 'validations' do
    before :each do
      @group = Group.new(name: 'Test Group', icon: 'test.png')
    end
    it 'Name should be present' do
      @group.name = nil
      expect(@group).to_not be_valid
    end
    it 'Icon should be present' do
      @group.icon = nil
      expect(@group).to_not be_valid
    end
  end
end
