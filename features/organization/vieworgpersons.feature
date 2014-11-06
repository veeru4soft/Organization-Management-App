@orguserview
Feature: Viewing Users 
In order to view all Users in an Organization
As an Adminstrator
I need to open an Index page and do some operations
@userorgview
Scenario: Viewing Users under Organization
	Given I am at Home Page
	When I move to Organization Menu 
	And click on View Users Under Organization sub Menu
	And I choose Organization Id
	Then I should see <organization id> <organization name> <groupid> <groupname> <userid> <username>

	| organization id | organization name | groupid | groupname | userid | username |
	| 1	  	  | Org1	      | 1	| G1	    | 1	     | veeru    |	

