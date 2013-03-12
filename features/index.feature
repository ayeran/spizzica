Feature: index page
 As a site visitor
 In order to start using the site
 I want to connect to the site from '/'

Background: 
 Given I am on the "home page"
 And I am not logged in

Scenario: presence of "Spizzicaluna" on the home page
 Then I should see "Spizzicaluna"

Scenario: presence of the link to Orders
 And I follow "Orders"
 Then I should see "Listing orders"

Scenario: presence of the link to Items
 And I follow "Items"
 Then I should see "Listing items"
 
Scenario: presence of the link to Ingredients
 And I follow "Ingredients"
 Then I should see "Listing ingredients"

Scenario: homepage reports credentials of non-authenticated user
 Then I should see "Welcome, visitor!"