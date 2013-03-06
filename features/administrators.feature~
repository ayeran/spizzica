Feature: administrators can login from the site
 As a site administrator
 In order to make changes
 I want to be able to login directly from the site

Scenario: presense of the view to login
 Given I am on the page "adminlogin"
 Then I should see "Sign in"
 And I fill in "Email" with "some@fake.email"
 And I fill in "Password" with "some wrong password"
 And I press "Sign in"
 Then I should see "Invalid email or password."
