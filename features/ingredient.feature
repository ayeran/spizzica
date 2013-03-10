Feature: insert ingredient
 As a visitor
 In order to compose my own dish
 I want to be able to view and select ingredients
 
Scenario: a visitor should see a list of ingredients
 Given I am on the homepage
 And I do not exist as a user
 Then I follow "Ingredients"
 And I should see "Listing ingredients"