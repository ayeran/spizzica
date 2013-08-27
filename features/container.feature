Feature: managing containers of beer
 As an admin
 In order to classify beer containers
 I want to be able to add/delete/edit container

Background:
  Given I am logged in as an administrator

 Scenario:  adding a beer container
  Given I am on the page "Containers"
  And I follow "Nuovo contenitore"
  Then I fill in "container_name" with "bottiglia"
  Then I press "Salva"
  And I should see "bottiglia"