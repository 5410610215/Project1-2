Feature: Add the problem to Problempedia
  As an Admin
  I want to add the problem to Problempedia
  So that I can share the problem with either employees

Background: problem have been added to database
  
Given the following unsolveds exist:
| topic    | priority | department | status |               details                |
| LAN      |    2     |  HR         |   0    | Lan cable is broken                 | 
| Internet |    2     | Engineer   |   1    | I can't use Internet                | 
| Printer  |    5     |  Manager    |   0    | Printer says ink cartridge is empty |
 


And I am on unsolveds page

Scenario: Add a new problem
When I go to Add problem page
And I fill in "Topic" with "Blue screen"
And I fill in "Department" with "Accounting"
And I fill in "Details" with "Error405 x00001"
And I select "Low" from "Priority"
And I press "Save"
And I follow "Back"
Then I should be on unsolveds page
And I should see "Blue screen"


