Feature: Allsports page Features

Background : 
  Given I'm on the homepage

Scenario: Verify the submenu in the allsports menu
  When I click on allsports from the top menu 
  Then I validate the submenu options in the allsports dropdown

Scenario Outline: Verify Sport categories and list of sports in most popular
  When I click on "<most_popular_Category>" from menu
  Then I should be redirected to selected sport page
  Examples:
| Most_popular_Category |
| FOOTBALL              |
| TENNIS                |
| CYCLING               |
| SNOOKER               |
| MOTOR SPORTS          |
| WINTER SPORTS         |
| ATHLETICS             |
| ALL SPORTS            |

Scenario Outline: Verify Sport categories and list of sports in all popular
  When I click on "<all_sports_Category>" from menu
  Then I should be redirected to selected sport page
  Examples:
| All_sports_Category   |
| BSB                   |
| CRICKET               |
| CYCLING TRACK         |
| DARTS                 |
| EQUESTRIAN            |
| F1                    |
| FORMULA E             |
| HORSE RACING          |
| JUDO                  |
| OLYMPICS              |
| PARALYMPICS           |
| RUGBY                 |
| SPEEDWAY              |
| SQUASH                |
| SUPER BIKES           |
| TRANSFERS             |
| UNIVERSITY SPORTS     |
