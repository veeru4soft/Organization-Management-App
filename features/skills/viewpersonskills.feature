@personskillsview
Feature: Viewing Person Skills
In order to View Person Skills
As an Administrator
I need to open an Index page and do some operations
@personskillsdisplay
Scenario: Viewing Person Skills
	Given Navigation to Home Page
	When I click on Skill Menu Nav
	And I click on View Persons Skills By Id sub Menu
	Then I can see a select box with some values
	When I choose Person Id and click on the Search
	Then I can view all the skills of a Person

	| Personid | Person name | Skill Name |
	| 1	   |  veeru 	 | Ruby       |
