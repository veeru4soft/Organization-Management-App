@skillpersoncreate
Feature: Creating Skills for Person
In order to create Skills for a Person
As an User
I need to open an Index page and do some operations
@skill2
Scenario: Creating Person Skills
	Given Index Page
	When I click on Skills Menu and click on Create Skills for Person
	Then I should choose Person Belongs to
	Then I should select Person Id and then skills 
	When I select skills and click on save
	Then Skills created under one Person
