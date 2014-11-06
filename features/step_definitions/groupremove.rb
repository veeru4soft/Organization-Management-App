Given /^Navigate to Groups Page$/ do
	visit root_path
end

When /^I click on Org Menu Bar $/ do
	within("#org") do
		click_link 'orga'
	end
	
end

When /^click on View Group Under Organization sub Menu$/ do
	within("#viewgrp") do
		click_link 'grpview'
	end
end

When /^I choose an Organization$/ do
	page.should have_content('Choose Organization:')
	select '1 Org1', :from => 'orgsel'
	click_button 'Show'
end

Then /^I should see the organization id organization name groupid groupname Action$/ do 
	within('table') do
		page.should have_content('Organization Id')
	end
end
When /^I click on remove link button$/ do
	within('#G1') do
		click_link 'G1'
	end
end

Then /^the selected group is removed$/ do
	page.should have_content('Group Name:')
end
