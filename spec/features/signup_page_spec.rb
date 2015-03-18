require 'rails_helper'

describe "Test the sign-up process" do
  it "tests sign-up button" do
    visit '/'
    click_on 'Sign Up'
    expect(page).to have_content "Password confirmation"
  end

  it "submits a new user" do
    visit '/users/new'
    fill_in "Email", :with => "k@k.com"
    fill_in "Password", :with => "123"
    fill_in "Password confirmation", :with => "123"
    click_on 'Sign Up'
    expect(page).to have_content "Welcome"
  end

end
