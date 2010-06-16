require File.dirname(__FILE__) + '/acceptance_helper'

feature "Feature name", %q{
  In order use the site
  As a guest
  I want to signup for an account
} do
  
  background do
    User.create!(:login => "clayton", 
                 :email => "clayton@integrumtech.com",
                 :password => "password",
                 :password_confirmation => "password")
  end
  
  scenario "Login to my account" do
    visit "/"
    fill_in("user_session_login", :with => "clayton")
    fill_in("user_session_password", :with => "password")
    click_button("Login")
    page.should have_css("p.login")
    within(:css, "p.login") do
      page.should have_content("clayton")
    end
  end
  
  scenario "Logout of my account" do
    visit "/"
    fill_in("user_session_login", :with => "clayton")
    fill_in("user_session_password", :with => "password")
    click_button("Login")
    click_link("Logout")
    page.should have_content("Login")
  end
  
  scenario "Register my Account" do
    visit new_user_page
    fill_in("user_login", :with => "Andrew")
    fill_in("user_email", :with => "andrew.bowerman@integrumtech.com")
    fill_in("user_password", :with => "moocow")
    fill_in("user_password_confirmation", :with => "moocow")
    click_button("Register")
    page.should have_content("Andrew")
  end
  
end