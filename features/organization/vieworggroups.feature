@orggroupview
Feature: Viewing Groups
In order to view all Groups in an Organization
As a Administrator
I need to open an Index page and do some operations
@orggrpview
Scenario: Viewing Groups under Organization
	Given Navigate to Home Page
	When I click on Organization Menu 
	And click on View Groups Under Organization sub Menu
	And I select Organization
	Then I should see <organization id> <organization name> <groupid> <groupname>

	| organization id | organization name | groupid | groupname |
	| 1	  	  		  | Org1	     	  | 1		| G1	    |
	| 1	  	  		  | Org1	  		  | 2		| G2	    |
	
