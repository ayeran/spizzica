Feature: index page
 As a site visitor
 In order to start using the site
 I want to connect to the site from '/'

Background: 
 Given I am on the "home page"
 And I am not logged in

Scenario: presence of "Spizzicaluna" on the home page
 Then I should see "Spizzicaluna"
 
Scenario: presence of the set of links
 Then I should see links to: Orders, Items, Ingredients, Beer Styles
 Then I should see links to: Colors, Aromas, Tastes, Foams, Manufacturers, Beers, Containers, Lids, Colors

Scenario: homepage reports credentials of non-authenticated user
 Then I should see "Welcome, visitor!"