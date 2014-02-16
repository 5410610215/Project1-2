Feature: Show the unsolveds problem

  As an everyone
  So that I can see the unsolved problem
  I want to see the unsolved problem

Background: Show the unsolveds
  
Given the following unsolveds exist:
| topic    | priority |  department | status |               details                |
| LAN      |    2     |  HR         |   0    | Lan cable is broken                 |
| Internet |    2     |  Engineer   |   1    | I can't use Internet                |
| Printer  |    5     |  Manager    |   0    | Printer says ink cartridge is empty |



And I am on unsolveds page

Scenario: Show the unsolved problem
When I go to unsolveds page
And I should see "LAN"

