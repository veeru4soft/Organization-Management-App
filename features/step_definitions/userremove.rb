Given /^Navigate to the Removing an User Page$/ do
	visit root_path
end
When /^I click on User Menu Navbar$/ do
	within("#user") do
		click_link 'usercreate'
	end
end
Then /^I can see sub Menu item List$/ do
	page.should have_content('Create New User')
end
When /^I click View User$/ do
	within('#viewprofile') do
		click_link 'userprofile'
	end
end
Then /^I can see Exisiting Users$/ do
	page.should have_content('Choose Person Id:')
	select 'grp: 1 person: 1 veerababu'
	click_button 'Search'
	page.should have_selector 'h1', text:'Person Information'
end


When /^I click on remove link$/ do
	within('#op1') do
		click_link 'Click to Delete the User'
	end
end
Then /^Person Removed Successfully$/ do
	page.should have_content('Success')
end	
