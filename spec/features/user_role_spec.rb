require 'rails_helper'

RSpec.describe 'user roles' do

  def log_in_as(user)
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  let(:user) { User.create(email: 'test@example.com', password: 'password') }

  it 'allows logged-in user view bus index page' do
    log_in_as(user)
    visit buses_path
    expect(current_path).to eq(buses_path)
  end
end
