Feature: managing beers
 As an admin
 In order to wasten the assortiment
 I want to be able to add beer

Background: logged in as an admin
 Given the following users exist:
  | email               | password         | role       |
  | admin@test.com       | admin_password    | admin      |
  | visitor@visitor.com | visitor_password | registered |
  And I am on the "home page"
  And I follow "Login"
  And I fill in "Email" with "admin@test.com"
  And I fill in "Password" with "admin_password"
  And I press "Sign in"
  Then I should see "admin"

 Scenario:  adding a style
  Given I am on the page "Beer"
  And I follow "New Beer"
  And I fill in "Name" with "Birra"
  And I check "Beerstyle"
  And I check "maltato"