Feature: making prenotations
  As a visitor of the pub
  In order to be sure to find a place in the pub
  I want to be able to book a table

Background: starting page - new prenotation
  Given I am on the page "Prenotations"


Scenario: presence of the prenotation item in the menu
  Then I should see "Prenotazioni"

Scenario: inserting non complete data
  When I fill in "prenotation_name" with "Mario"
  And I press "Prenota ora"
  Then I should see "errors"


Scenario: inserting valid data
  When I fill in "prenotation_name" with "Mario"
  And I fill in "prenotation_email" with "test@test.com"
  And I fill in "prenotation_phone" with "12345"
  And I fill in "prenotation_comment" with "I'd like to sit outside"
  And I select "3" from "prenotation_quantity"
  And I press "Prenota ora"
  Then I should not see "errors"
  And I should see "La prenotazione è andata a buon fine!"
