Feature: making an order
	As a visitor
	In order to order something to take-away
	I want to be able make orders
  Given the following beers are in the menu
    | name    | price |
    | pilsner | 1.5   |
    | urquell | 0.75  |
    | lager   | 1     |

Scenario: non-authenticated user
  Given I am on the order page
	Then I should see "Listing orders"

