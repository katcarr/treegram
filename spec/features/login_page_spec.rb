require 'rails_helper'

describe "click on the login button process" do
  it "clicks the login button" do
    visit '/'
    click_on "Login"
    expect(page).to have_content "Email"
  end
end
