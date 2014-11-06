Given /^I am at Home$/ do
	visit root_path
end
When /^I click on Users Menu bar$/ do
	within("#user") do
		click_link 'usercreate'
	end
end
Then /^I should see sub Menu List$/ do
	page.should have_content('Create New User')
end
When /^I click on View Users$/ do
	within('#viewprofile') do
		click_link 'userprofile'
	end
end
Then /^I should see Exisiting Users$/ do
	page.should have_content('Choose Person Id:')
	select 'grp: 1 person: 1 veeru'
	click_button 'Search'
	page.should have_selector 'h1', text:'Person Information'
end


When /^I click on edit link$/ do
	
	within('#op1') do
		click_link 'Click to Edit the User'
	end

end
Then /^Person Details form open$/ do
	page.should have_content('First Name:')
	
end	

When /^I change any value and click on Update button$/ do
	select 'org: 1 grp: 1 PhP', :from => "grpsel"
	fill_in 'pplfname', with: 'veerababu'
	fill_in 'pplname', with: 'erukula'
	fill_in 'ppldob', with: '21-04-1988'
	fill_in 'pplph', with: '589898'
	fill_in 'pplplace', with: 'kkd'
	fill_in 'pplemail', with: 'veeru@gmail.com'
	attach_file('pplfile',File.join(::Rails.root, 'features', 'user', 'usercreate.feature'))	
	click_button 'Update'
end

Then /^one User is Updated under one Group$/ do
	a = Person.first.inspect
	if !a
		puts "An error occured while storing data into database"
	else
		puts "Success fully inserted"
	end
end

