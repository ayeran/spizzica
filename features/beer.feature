Feature: managing beers
 As an admin
 In order to wasten the assortiment
 I want to be able to add beer

Background: logged in as an admin
 Given the following users exist:
  | email               | password         | role       |
  | admin@test.com      | admin_password   | admin      |
  | visitor@visitor.com | visitor_password | registered |

 Given the following "Beerstyles" exist:
  | name       |
  | dortmunder |
  | lager      |
  | pilsner    |

 Given the following "Manufacturers" exist:
  | name          |
  | Birra Perroni |
  | Radeberger    |
 Given the following "Containers" exist:
  | name                |
  | bottiglia           |
  | bottiglia ceramica  |
 Given the following "Lids" exist:
  | name             |
  | tappo a corona   |
  | tappo meccanico  |
 Given the following "Aromas" exist:
  | name       |
  | amarognolo |
  | dissettante|
 Given the following "Tastes" exist:
  | name       |
  | agrumato   |
  | secco      |
 Given the following "Colors" exist:
  | name      |
  | chiaro    |
  | scuro     |
 Given the following "Foams" exist:
  | name     |
  | fitta    |
  | compatta |

  And I am on the "home page"
  And I follow "Login"
  And I fill in "Email" with "admin@test.com"
  And I fill in "Password" with "admin_password"
  And I press "Sign in"
  Then I should see "admin"

 Scenario:  adding a style
  Given I am on the page "Beer"
  And I follow "New Beer"
  And I fill in "Name" with "Birra"
  And I check "beerstyles" checkbox with value "pilsner"
  And I select "bottiglia" from "beer_container_id"
  And I select "tappo a corona" from "beer_lid_id"
  And I check "aromas" checkbox with value "amarognolo"
  And I check "tastes" checkbox with value "secco"
  And I check "colors" checkbox with value "chiaro"
  And I check "foams" checkbox with value "fitta"
  And I press "Save"
  Then I should see "bottiglia"
