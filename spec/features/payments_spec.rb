require 'rails_helper'

RSpec.feature 'Payments', type: :feature do
  before do
    user = User.create!(email: 'test@test.com', name: 'Test1', password: 'password')
    @group = Group.create!(name: 'Test Group', icon: 'icon (1).png', user_id: user.id)

    expect(user.id).not_to be_nil
    expect(@group.id).not_to be_nil

    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  scenario 'User creates a new payment' do
    visit new_group_payment_path(@group)

    fill_in 'Name', with: 'Test payment'
    fill_in 'Amount', with: 100

    

    click_button 'Submit'

    expect(page).to have_text('Test payment')
    expect(page).to have_text('100')
  end
end