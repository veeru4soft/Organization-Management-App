Given /^Index Page$/ do
	visit root_path
end

When /^I click on Skills Menu and click on Create Skills for Person$/ do
	within('#skillcreate') do
		click_link 'createskill'
	end
	within('#newprsnskill') do
		click_link 'newskillprsn'
	end
end

Then /^I should choose Person Belongs to$/ do 
	page.should have_content('Person Belongs :')
	select 'org: 1 grp: 1 G1', :from => 'grpsel'
	click_button 'Search'
end

Then /^I should select Person Id and then skills$/ do
	page.should have_content('Skills:')
	puts "pass"
	select '1 veeru', :from => 'prsnsel'
	page.should have_content('Skills:')
end

When /^I select skills and click on save$/ do
	within('#check1') do
		page.should have_content('Ruby')
		check ' Ruby
'
	end
	click_button 'Save'
end

Then /^Skills created under one Person$/ do
	@prsn = Person.find(1)
	@skill = @prsn.skills.all
	@skill.each do |s|
		@allskills = s.allskills
	end
	if !@allskills
		puts 'Error occure while inserting data'
	else
		puts 'Successfully Inserted'
	end	
end
