Feature: making orders
  As a usual person
  In order to celebrate with my friends
  I would like to be able to make an order

Background: some beers exist
  Given the following beers have been added
  | nome        |  stile    | contenitore | lid             | aroma       |  gusto  | colore        | schiuma         | gradazione  | volume  | prezzo  |
  | Birralocale |  pilsner  | bottiglia   | tappo a corona  | amarognolo  | secco   | chiaro, scuro | fitta, compatta | 5.3         | 45      | 12.2    |
  | Kozel       |  lager    | bottiglia   | tappo a corona  | amarognolo  | secco   | scuro         |  compatta       | 2.4         | 45      | 9.1     |

Scenario: presence of items to order
  Given I am on the page "Beer"
  And I click to add beer "Birralocale" to the cart
  Then I should see "Carrello"
  And I should see "1 x 12.20"
  And I click to add beer "Birralocale" to the cart
  And I should see "2 x 12.20"
  Given I am on the page "Sandwich"
  And I click to add beer "Birralocale" to the cart
