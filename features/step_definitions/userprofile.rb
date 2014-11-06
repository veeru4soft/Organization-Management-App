Given /^Open Home Page$/ do
	visit root_path
end

When /^I click on Users Menu$/ do
	within("#user") do
		click_link 'usercreate'
	end
end

When /^I click on View Users Profile By Id sub Menu$/ do
	within('#viewprofile') do
		click_link 'userprofile'
	end
end

Then /^I can see a select box$/ do
	page.should have_content('Choose Person Id:')
end

When /^I choose Person Id and click the Search Button$/ do
	select 'grp: 1 person: 1 veeru'
	click_button 'Search'
end

Then /^I can view users Profile$/ do |table|
	page.should have_selector 'h1', text:'Person Information'
	table.hashes.each do |columns|
		columns.keys.each do |k|
			within('table') do
				page.should have_content(columns[k])
			end
		end
	end
end
