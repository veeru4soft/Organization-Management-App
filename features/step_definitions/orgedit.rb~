Given /^Navigate to Organization Page$/ do
		visit root_path
end

When /^I click on Organization Menu and click on View all Organization sub menu$/ do
	within("#org") do
		click_link 'orga'
	end
	within("#vieworg") do
		click_link 'orgview'
	end
end

Then /^I should see All Organization Details$/ do
	page.should have_content('Address')	
end

When /^I click on edit button$/ do
	page.should have_content 'Action'
	within('#optd1') do
			click_link 'Click to Edit the Organization'
	end
end

Then /^I should see edit page of a organization$/ do
	page.should have_content('*Organization Name:')
end

When /^I modify some fields and click update button$/ do
	fill_in 'orgname', with:'Org1'
	fill_in 'orgcity', with:'Rjy'
	fill_in 'orgstate', with:'AP'
	fill_in 'orgph', with:'2568888'
	fill_in 'orgemail', with:'veerababu@gmail.com'
	fill_in 'orgweb', with:'www.veeru.com'
	click_button 'Update'
	page.should have_content('Success')
end

Then /^the organization is Updated$/ do
	@org = Organization.first
	if !@org 
		puts "Not stored in Database"
	else
		puts "Stored on the Database"
	end
end
