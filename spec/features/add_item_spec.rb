require 'rails_helper'

describe 'the add a item path' do
  it 'adds an item to a user', js: true do
    admin_login
    current_user = @user
    visit user_path(@user)
    click_on 'Add Item'
    fill_in 'item_name', with: 'name'
    fill_in 'item_morality', with: 23
    click_on "Create Item"
    expect(page).to have_content('Welcome')
  end
end
