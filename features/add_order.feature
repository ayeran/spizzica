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
  # And I should see all beers
  Then show me the page

