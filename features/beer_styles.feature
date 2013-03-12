Feature: managing styles of beer
 As an admin
 In order to wasten the assortiment
 I want to be able to add style of beer
 
 Scenario:  adding a beer style
  Given I am on the page "Beer Styles"
  And I follow "New Beer style"
  Then I fill in "Name" with "pilsner"
  And I fill in "Description" with "good beer"
  Then I press "Save"
  And I should see "pilsner" 
  And I should see "good beer"
