### UTILITY METHODS ###

def create_visitor
  @visitor ||= {:email => "example@example.com",
    :password => "changeme", :password_confirmation => "changeme" }
end

def find_user
  @user ||= User.where(:email => @visitor[:email]).first
end

def create_unconfirmed_user
  create_visitor
  delete_user
  sign_up
  visit '/users/sign_out'
end

def create_user
  create_visitor
  delete_user
  @user = FactoryGirl.create(:user, @visitor)
end

def delete_user
  @user ||= User.where(:email => @visitor[:email]).first
  @user.destroy unless @user.nil?
end

def sign_up
  delete_user
  visit '/users/sign_up'
#  fill_in "user_name", :with => @visitor[:name]
  fill_in "user_email", :with => @visitor[:email]
  fill_in "user_password", :with => @visitor[:password]
  fill_in "user_password_confirmation", :with => @visitor[:password_confirmation]
  click_button "Sign up"
  find_user
end

def sign_in
  visit '/users/sign_in'
  fill_in "user_email", :with => @visitor[:email]
  fill_in "user_password", :with => @visitor[:password]
  click_button "Sign in"
end

### GIVEN ###

Given /^the following beers are in the menu$/ do |fields|
  fields.row_hash.each do |name, price|
    Beer.create!({:name => name, :price => price})
  end
end


Given /^the following users exist:/ do |users_table|
  users_table.hashes.each do |user_data|
    role = Role.find_by_name(user_data["role"]) || Role.create!(:name => user_data["role"])
    user = {:email => user_data["email"], :password => user_data["password"], :role_ids => role.id }
    User.create!(user)
   end
  assert User.all.count == users_table.hashes.size
  end

Given /^the following Beer Styles exist:/ do |bs_t|
  bs_t.hashes.each do |bs|
   Beerstyle.create!(bs)
  end
  assert Beerstyle.all.count == bs_t.hashes.size
end

Given /^the following "(.+)" exist:/ do |models, bs_t|
  model=models.singularize
  bs_t.hashes.each do |bs|
   model.constantize.create!(bs)
  end
  assert model.constantize.all.count == bs_t.hashes.size
end


Then /^I should see links to: (.+)+$/ do |links|
  linksArr=links.split(",")
  linksArr.each do |link|
    find(:link, link.strip)
    #Given %{I should see link to "#{link}"}
  end
end

Then /^I should see the following: (.+)$/ do |arr|
   words=arr.split(",")
   words.each do |word|
     step "I should see #{word.strip}"
   end
end

# Then /^I check (.+) checkbox with values (.+)$/ do |box,values|
 # values.split(",").each do |value|
   # step %{I check #{box} checkbox with value #{value.strip}"}
 # end
# end

Given /^I am logged in as an administrator$/ do
 steps %Q{
   Given the following users exist:
    | email               | password         | role       |
    | admin@test.com      | admin_password   | admin      |
    | visitor@visitor.com | visitor_password | registered |
   Given I am on the page "userlogin"
   And I fill in "Email" with "admin@test.com"
   And I fill in "Password" with "admin_password"
   And I press "Sign in"

}
end

Given /^beerstyles exist$/ do
  steps %Q{
    Given the following "Beerstyles" exist:
      | name       |
      | dortmunder |
      | lager      |
      | pilsner    |
}
end

Given /^manufacturers exist$/ do
  steps %Q{
    Given the following "Manufacturers" exist:
      | name          |
      | Birra Perroni |
      | Radeberger    |
  }
end

Given /^containers exist$/ do
  steps %Q{
    Given the following "Containers" exist:
      | name                |
      | bottiglia           |
      | bottiglia ceramica  |
  }
end

Given /^lids exist$/ do
  steps %Q{
    Given the following "Lids" exist:
      | name             |
      | tappo a corona   |
      | tappo meccanico  |
}
end

Given /^aromas exist$/ do
  steps %Q{
    Given the following "Aromas" exist:
      | name       |
      | amarognolo |
      | dissettante|
  }
end

Given /^tastes exist$/ do
  steps %Q{
  Given the following "Tastes" exist:
    | name       |
    | agrumato   |
    | secco      |
 }
end

Given /^colors exist$/ do
  steps %Q{
  Given the following "Colors" exist:
    | name      |
    | chiaro    |
    | scuro     |
  }
end

Given /^foams exist$/ do
  steps %Q{
  Given the following "Foams" exist:
    | name     |
    | fitta    |
    | compatta |
  }
end

Given /^I should see all beers$/ do
   Beer.all.each do |beer|
    steps %Q{
      Then I should see "#{beer.name}"
    }
   end
end

Given /^the beers have been added$/ do
  steps %Q{
    Given I am logged in as an administrator
    And beerstyles exist
    And manufacturers exist
    And containers exist
    And lids exist
    And aromas exist
    And tastes exist
    And colors exist
    And foams exist
    Given I am on the page "New Beer"
    And I fill in "beer_name" with "Birralocale"
    And I check "beerstyles" checkbox with value "pilsner"
    And I select "bottiglia" from "beer_container_id"
    And I select "tappo a corona" from "beer_lid_id"
    And I check "aromas" checkbox with value "amarognolo"
    And I check "tastes" checkbox with value "secco"
    And I check "colors" checkbox with values "chiaro", "scuro"
    And I check "foams" checkbox with values "fitta", "compatta"
    And I fill in "beer_strength" with "8.2"
    And I fill in "beer_volume" with "33"
    And I fill in "beer_price" with "12"
    And I press "Salvare"
    Then I should see the following: "Birralocale", "bottiglia", "tappo a corona", "amarognolo", "secco", "chiaro", "fitta", "compatta", "scuro"
    }
end

Given /^the following beers have been added$/ do |beer_data|
  steps %Q{
    Given I am logged in as an administrator
    And beerstyles exist
    And manufacturers exist
    And containers exist
    And lids exist
    And aromas exist
    And tastes exist
    And colors exist
    And foams exist}
    beer_data.hashes.each do |beer|
      step %{I am on the page "New Beer"}
      step %{I fill in "beer_name" with "#{beer[:nome]}"}
      step %{I check "beerstyles" checkbox with value "#{beer[:stile]}"}
      step %{I select "#{beer[:contenitore]}" from "beer_container_id"}
      step %{I select "#{beer[:lid]}" from "beer_lid_id"}
      step %{I check "aromas" checkbox with values "#{beer[:aroma]}"}
      step %{I check "tastes" checkbox with values "#{beer[:gusto]}"}
      step %{I check "colors" checkbox with values "#{beer[:colore]}"}
      step %{I check "foams" checkbox with values "#{beer[:schiuma]}"}
      step %{I fill in "beer_strength" with "#{beer[:gradazione]}"}
      step %{I fill in "beer_volume" with "#{beer[:volume]}"}
      step %{I fill in "beer_price" with "#{beer[:prezzo]}"}
      step %{I press "Salvare"}
      # step %{I should see the following: "Birralocale"}
    end
end






Given /^I should see link to (.+)/ do |link|
 find(:link, link)
end

Given /^I am not logged in$/ do
  #visit '/users/sign_out'
  if page.has_content?("Logout")
    click_link("Logout")
  end
end

Given /^I am logged in$/ do
  create_user
  sign_in
end

Given /^I exist as a user$/ do
  create_user
end

Given /^I do not exist as a user$/ do
  create_visitor
  delete_user
end

Given /^I exist as an unconfirmed user$/ do
  create_unconfirmed_user
end

Given /^I am a new, authenticated user$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!

  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Sign in"

end

### WHEN ###
When /^I sign in with valid credentials$/ do
  create_visitor
  sign_in
end

When /^I sign out$/ do
  visit '/users/sign_out'
end

When /^I sign up with valid user data$/ do
  create_visitor
  sign_up
end

When /^I sign up with an invalid email$/ do
  create_visitor
  @visitor = @visitor.merge(:email => "notanemail")
  sign_up
end

When /^I sign up without a password confirmation$/ do
  create_visitor
  @visitor = @visitor.merge(:password_confirmation => "")
  sign_up
end

When /^I sign up without a password$/ do
  create_visitor
  @visitor = @visitor.merge(:password => "")
  sign_up
end

When /^I sign up with a mismatched password confirmation$/ do
  create_visitor
  @visitor = @visitor.merge(:password_confirmation => "changeme123")
  sign_up
end

When /^I return to the site$/ do
  visit '/'
end

When /^I sign in with a wrong email$/ do
  @visitor = @visitor.merge(:email => "wrong@example.com")
  sign_in
end

When /^I sign in with a wrong password$/ do
  @visitor = @visitor.merge(:password => "wrongpass")
  sign_in
end

When /^I edit my account details$/ do
  click_link "Edit account"
  fill_in "user_name", :with => "newname"
  fill_in "user_current_password", :with => @visitor[:password]
  click_button "Update"
end

When /^I look at the list of users$/ do
  visit '/'
end

### THEN ###
Then /^I should be signed in$/ do
  page.should have_content "Logout"
  page.should_not have_content "Sign up"
  page.should_not have_content "Login"
end

Then /^I should be signed out$/ do
  page.should have_content "Sign up"
  page.should have_content "Login"
  page.should_not have_content "Logout"
end

Then /^I see an unconfirmed account message$/ do
  page.should have_content "You have to confirm your account before continuing."
end

Then /^I see a successful sign in message$/ do
  page.should have_content "Signed in successfully."
end

Then /^I should see a successful sign up message$/ do
#  page.should have_content "Welcome! You have signed up successfully."
  page.should have_content "A message with a confirmation link has been sent to your email address."
end

Then /^I should see an invalid email message$/ do
  page.should have_content "Email is invalid"
end

Then /^I should see a missing password message$/ do
  page.should have_content "Password can't be blank"
end

Then /^I should see a missing password confirmation message$/ do
  page.should have_content "Password doesn't match confirmation"
end

Then /^I should see a mismatched password message$/ do
  page.should have_content "Password doesn't match confirmation"
end

Then /^I should see a signed out message$/ do
  page.should have_content "Signed out successfully."
end

Then /^I see an invalid login message$/ do
  page.should have_content "Invalid email or password."
end

Then /^I should see an account edited message$/ do
  page.should have_content "You updated your account successfully."
end

Then /^I should see my name$/ do
  create_user
  page.should have_content @user[:name]
end


Given /^I click to add beer "(.*?)" to the cart$/ do |arg1|
  beer = Beer.find_by_name(arg1)
  all('a').select{|link| link[:href] == '/line_items?item_id='+beer.id.to_s}.first.click
  # browser.link(:href => 'line_items?item_id='+beer.id ).first.click

end