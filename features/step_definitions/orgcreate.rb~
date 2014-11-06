Given /^Navigate to Index Page$/ do
	visit root_path
end

When /^I click on Organization Menu and click on Create New Organization sub menu$/ do
	within("#org") do
		click_link 'orga'
	end
	within("#neworg") do
		click_link 'orgnew'
	end
end

Then /^I should see Organization Form$/ do
	page.should have_content('City')
end

When /^I fill all the fields on the Form and click on Create Button$/ do
	fill_in 'orgname', with:'Org2'
	fill_in 'orgcity', with:'Kkd'
	fill_in 'orgstate', with:'AP'
	fill_in 'orgph', with:'256565'
	fill_in 'orgemail', with:'veebu@gmail.com'
	fill_in 'orgweb', with:'www.vee.com'
	click_button 'Save'
	page.should have_content('Success')
end

Then /^one organization is created$/ do
	@organization = Organization.first
	if !@organization 
		puts "Not stored in Database"
	else
		puts "Stored on the Database"
	end
end
