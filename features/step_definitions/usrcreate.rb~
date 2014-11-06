Given /^I am at Index Page$/ do
	visit root_path
end
When /^I click on User Menu$/ do
	within("#user") do
		click_link 'usercreate'
	end
end
Then /^I should see Menu List$/ do
	page.should have_content('Create New User')
end
When /^I click on Create New User$/ do
	within('#newuser') do
		click_link 'usernew'
	end
end
Then /^I should see User Creation form$/ do
	page.should have_content('First Name:')
end
When /^I fill all the fields and click on Create Button$/ do
	select 'org: 1 grp: 1 PhP', :from => "grpsel"
	fill_in 'pplfname', with: 'veeru'
	fill_in 'pplname', with: 'e'
	fill_in 'ppldob', with: '21-04-1988'
	fill_in 'pplph', with: '589898'
	fill_in 'pplplace', with: 'kkd'
	fill_in 'pplemail', with: 'veeru@gmail.com'
	attach_file('pplfile',File.join(::Rails.root, 'features', 'user', 'usercreate.feature'))	
	click_button 'Save'

end
Then /^one User is created under one Group$/ do
	a = Person.first.inspect
	if !a
		puts "An error occured while storing data into database"
	else
		puts "Success fully inserted"
	end
end
