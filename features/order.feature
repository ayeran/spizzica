Feature: making an order
	As a visitor 
	In order to order something to take-away
	I want to be able make orders

Scenario: non-authenticated user
	Given I am on the order page
	Then I should see "Listing orders" 
