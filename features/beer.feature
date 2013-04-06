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
  Given I am on the page "Beer"
  And I follow "New Beer"
  And I fill in "Name" with "Birra"
  And I check "beerstyles" checkbox with value "pilsner"
  And I select "bottiglia" from "beer_container_id"
  And I select "tappo a corona" from "beer_lid_id"
  And I check "aromas" checkbox with value "amarognolo"
  And I check "tastes" checkbox with value "secco"
  And I check "colors" checkbox with values "chiaro", "scuro"
  And I check "foams" checkbox with values "fitta", "compatta"
  And I press "Save"
  Then I should see the following: "bottiglia", "tappo a corona", "amarognolo", "secco", "chiaro", "fitta", "compatta", "scuro"
  When I am on the page "Beer"
  And I follow "Edit"
  And I check "aromas" checkbox with value "dissettante"
  And I press "Save"
  Then I should see "dissettante"
