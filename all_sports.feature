Feature: Allsports page Features

Background : 
  Given I'm on the homepage

Scenario: Verify the sports under allsports menu
  When I hover over allsports tab
  Then I validate the sports under allsports menu

Scenario: Verify the most popular sports under allsports menu
  When I hover over allsports tab
  Then I validate the sports field under most popular sports

Scenario: Verify the redirection with any sport under most popular
  When I click on any sport under most popular  
  Then I should be in the selected most popular sports page

Scenario: Verify the all sports section under allsports menu
  When I hover over allsports tab
  Then I validate the sports field under all sports section

Scenario: Verify the redirection with any sport under all sports section
  When I click on any sport under all sports section  
  Then I should be in the selected all sports page  