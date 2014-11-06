Given /^Navigate to Organization$/ do
	visit root_path
end

When /^I click on Organization Menu Bar$/ do
	within("#org") do
		click_link 'orga'
	end
	
end

When /^click on View Groups Under Organization sub Menu Bar$/ do
	within("#viewgrp") do
		click_link 'grpview'
	end
end

When /^I select an Organization$/ do
	page.should have_content('Choose Organization:')
	select '1 Org1', :from => 'orgsel'
	click_button 'Show'
end

Then /^I should see the <organization id> <organization name> <groupid> <groupname>$/ do 
	within('table') do
		page.should have_content('Organization Id')
	end
end
When /^I click on edit link button$/ do
	within('table') do
		click_link 'Click to Edit the Group'
	end
end

Then /^I should see group update form$/ do
	page.should have_content('Group Name:')
end

When /^I do some changes and click on Update button$/ do
	select "1 Org1", :from => "orgsel"
	fill_in 'grpname', with: 'PhP'
	click_button 'Update'
	page.should have_content('Success')
end

Then /^the changes are updated$/ do
	a = Group.first.inspect
	if !a
		puts "An error occured while storing data into database"
	else
		puts "Success fully inserted"
	end
end
