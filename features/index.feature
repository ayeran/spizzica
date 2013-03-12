Feature: index page
 As a site visitor
 In order to start using the site
 I want to connect to the site from '/'

Background: 
 Given I am on the "home page"
 And I am not logged in

Scenario: presence of "Spizzicaluna" on the home page
 Then I should see "Spizzicaluna"

Scenario: presence of the links 
 And I should see link to Orders
 And I should see link to Items
 And I should see link to Ingredients
 And I should see link to Beers

Scenario: homepage reports credentials of non-authenticated user
 Then I should see "Welcome, visitor!"