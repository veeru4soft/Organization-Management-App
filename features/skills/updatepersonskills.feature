@personskillsupdate
Feature: Updating Person Skills
In order to Update Person Skills
As an Administrator
I need to open an Index page and do some operations
@personskillsupdate
Scenario: Updating Person Skills
	Given Navigation to View Page
	When I click on Skil Menu Bar
	And I click on View Persons Skils By Id sub Menu
	Then I can see a select box with values
	When I select Person and click on the Search
	Then I can view all the skils of a Person
	When I click on edit option
	Then I can view the skills edit page
	When I do any changes on the skills and click on Update button
	Then all modified skills are updated
	
