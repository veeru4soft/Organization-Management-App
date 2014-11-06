@groupskillsupdate
Feature: Updating Group Skills
In order to Update Group Skills
As an Administrator
I need to open an Index page and do some operations
@groupskillsupdate
Scenario: Updating Group Skills
	Given Navigation View Page
	When I click on Skils Menu Bar
	And I click on View Group Skills sub Menu of Skills
	Then I can view a select box with some values
	When I choose Group Id and click on Search Button
	Then I can view all the skills of a Group
	When I click on the edit option
	Then I can view skills with a form
	When I change some of the values and click on Update
	Then skills are updated
