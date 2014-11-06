Given /^Navigate to Organization Removing Page$/ do
		visit root_path
end

When /^I click on Organization and click on View all Organization sub menu item$/ do
	within("#org") do
		click_link 'orga'
	end
	within("#vieworg") do
		click_link 'orgview'
	end
end

Then /^I can view Organizations Details$/ do
	page.should have_content('Address')	
end

When /^I click on remove button$/ do
	page.should have_content 'Action'
	within('#Org1') do
			click_link '1'
	end
end

Then /^the organization is Removed$/ do
	page.should have_content('Success')
end
