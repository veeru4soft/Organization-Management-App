@personskillsdelete
Feature: Deleting Person Skills
In order to Delete Person Skills
As an Administrator
I need to open an Index page and do some operations
@personskillsdelete
Scenario: Removing Person Skills
	Given Navigation to View Page of Application
	When I click on Skil Menu NavBar
	And I click on View Persons Skillls sub Menu
	Then I can see a select box with different values
	When I select Person Id,Group Id and click on the Search
	Then I can view all the skillls of a Person
	When I click on remove button option
	Then person skills are removed

