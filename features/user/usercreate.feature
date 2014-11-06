@usercreate
Feature: Creating User
In order to create a User
As a Adminstrator
I need to open an Index page and do some operations
@user1
Scenario: Creating User
	Given I am at Index Page
	When I click on User Menu
	Then I should see Menu List
	When I click on Create New User 
	Then I should see User Creation form
	When I fill all the fields and click on Create Button
	Then one User is created under one Group

