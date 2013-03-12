Feature: managing containers of beer
 As an admin
 In order to classify beer containers
 I want to be able to add/delete/edit container
 
 Scenario:  adding a beer container
  Given I am on the page "Containers"
  And I follow "New Container"
  Then I fill in "Name" with "bottiglia"
  Then I press "Save"
  And I should see "bottiglia"