Feature: managing beers
 As an admin
 In order to wasten the assortiment
 I want to be able to add beer

Background: logged in as an admin
  Given I am logged in as an administrator
  And beerstyles exist
  And manufacturers exist
  And containers exist
  And lids exist
  And aromas exist
  And tastes exist
  And colors exist
  And foams exist

 Scenario: adding a beer
  Given I am on the page "New Beer"
  And I fill in "beer_name" with "Birralocale"
  And I check "beerstyles" checkbox with value "pilsner"
  And I select "bottiglia" from "beer_container_id"
  And I select "tappo a corona" from "beer_lid_id"
  And I check "aromas" checkbox with value "amarognolo"
  And I check "tastes" checkbox with value "secco"
  And I check "colors" checkbox with values "chiaro, scuro"
  And I check "foams" checkbox with values "fitta, compatta"
  And I fill in "beer_strength" with "8.2"
  And I fill in "beer_volume" with "33"
  And I fill in "beer_price" with "12"
  And I press "Salvare"
  Then I should see the following: "Birralocale","bottiglia", "tappo a corona", "amarognolo", "secco", "chiaro", "fitta", "compatta", "scuro"
  When I am on the page "Beer"
  Then show me the page
  And I follow "Modifica"
  And I check "aromas" checkbox with value "dissettante"
  And I press "Salvare"
  Then I should see the following: "dissettante", "amarognolo"
