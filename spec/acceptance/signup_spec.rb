require File.dirname(__FILE__) + '/acceptance_helper'

feature "Feature name", %q{
  In order use the site
  As a guest
  I want to signup for an account
} do
  
  scenario "Signup" do
    visit login_page
  end
  
end