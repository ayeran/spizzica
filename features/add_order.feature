Feature: making orders
  As a usual person
  In order to celebrate with my friends
  I would like to be able to make an order

Background: some beers exist
  Given the beers have been added

Scenario: presence of items to order
  Given I am on the page "Order"
  And I follow "New Order"
  Then I should see the following: "Nome", "Indirizzo","Telefono"
  And I should see all beers

