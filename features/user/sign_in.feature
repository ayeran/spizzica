Feature: Sign in
In order to get access to protected sections of the site
A user
Should be able to sign in

Background: 
 Given I am on the "home page"

Scenario: User is not signed up
 Given I do not exist as a user
 When I sign in with valid credentials
 Then I see an invalid login message
 And I should be signed out

Scenario: User signs in successfully
 Given I exist as a user
 And I am not logged in
 When I sign in with valid credentials
 Then I see a successful sign in message
 When I return to the site
 Then I should be signed in

Scenario: User enters wrong email
 Given I exist as a user
 And I am not logged in
 When I sign in with a wrong email
 Then I see an invalid login message
 And I should be signed out

Scenario: User enters wrong password
 Given I exist as a user
 And I am not logged in
 When I sign in with a wrong password
 Then I see an invalid login message
 And I should be signed out
 
@logging
 Scenario: logged in user
 Given the following users exist:
  | email | password | role |
  | test@test.com | test_password | admin |
  | visitor@visitor.com | visitor_password | registered |
  And I am on the "home page"
  Then I follow "Login"
  And I should see "Email"
  And I should see "Password"
  Then I fill in "Email" with "test@test.com"
  And I fill in "Password" with "test_password"
  And I press "Sign in"
  Then I should see "admin"
