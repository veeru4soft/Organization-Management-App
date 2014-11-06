class PersonController < ApplicationController
	def pplcreate
		@organization = Organization.all
		render :file => "app/views/person/pplcreate.html.erb"
	end

	def pplsave
		@group = Group.find(params[:grpsel])
		@person = @group.people.new
		@person.organization_id = params[:orgsel]
		@person.name = params[:pplname]
		@person.phnum = params[:pplph]
		@person.dob = params[:ppldob]
		@person.fname = params[:pplfname]
		@person.place = params[:pplplace]
		@person.email = params[:pplemail]
		begin 
			file_upload = params[:pplfile]
			@person.propic = file_upload.read
			if(@person.save)
				flash[:notice] = 'Person Successfully Created'
				redirect_to :action => 'personallshow'	
			end
		rescue
			puts 'error'
		end
			
	end
	def pplshow
		@organization = Organization.all
		@prsn = Person.order("name").page(params[:page]).per(2)
		render :file => "app/views/person/pplshow.html.erb"
	end
	def ppldisplay
		@person =  Person.find(params[:prsnid])
		@skill = @person.skills.all
		@skill.each do |s| 
			@allskills = s.allskills.split('-')
			@allskills.reject!{|element| element.empty?} 
			@allskills.shift
		end
		render :file => "app/views/person/ppldisplay.html.erb"
	end

	def peoplesearch
		@group = Group.find(params[:id])
		@person = @group.people.all
		@skills = @group.skills.all


		puts "######################"
			
		#puts @skills.class.inspect
		#puts @skills.inspect
		#puts @skills[10]
		#puts @group.skill.gsub(", '\n", ",  '\n", )
		#puts @skills.allskills.inspect
			
		@skills.each do |s| 
			@allskills = s.allskills.split("-")
			@allskills.reject!{|element| element.empty?} 
			@allskills.shift 
		end

		puts @allskills.class
		puts @allskills.inspect


		render :partial => 'personsearchresult.html.erb'	
	end

	def peopleSkillViewSearch
		@group = Group.find(params[:id])
		@person = @group.people.all
		render :partial => 'personskillviewsearchresult.html.erb'	
	end
	
	
	def ppledit
		@grp = Group.all
		@person = Person.find(params[:pplid])
		@@pr1 = @person
		render :file => "app/views/person/ppleditview.html.erb"
	end

	def pplupdate
		@@pr1.group_id = params[:grpsel]		
		@@pr1.name = params[:pplname]
		@@pr1.phnum = params[:pplph]
		@@pr1.dob = params[:ppldob]
		@@pr1.fname = params[:pplfname]
		@@pr1.place = params[:pplplace]
		@@pr1.email = params[:pplemail]
		begin 
			file_upload = params[:pplfile]
			@@pr1.propic = file_upload.read
			@@pr1.save
		rescue
			puts 'error'
		end
		flash[:notice] = 'Person Successfully Updated'
		@prsn = Person.order("id").page(params[:page]).per(2)
		render :file => 'app/views/person/personallshow.html.erb'
	end
	def ppldestroy
			@usr = Person.find(params[:id])
			if(@usr.destroy)
				flash[:notice] = 'Person Successfully Deleted'
				redirect_to :action => "personallshow"
			end
	end
	before_filter :set_search#, :only => :allorgshow

	def set_search
		@search=Person.search(params[:q])
	end
	

	def personallshow
		@q = Person.search(params[:q])
    	@prsn = @q.result.order("id").page(params[:page]).per(4)
		#@prsn = Person.all
		render :file => 'app/views/person/personallshow.html.erb'	
	end


	def peopleDisplayByPageRange
		@prsn = Person.order("name").page(params[:page]).per(params[:id])
		render :partial => 'peopleDisplayByPageRange.html.erb'	
	end
	

end
