class SkillController < ApplicationController
	def sgcreate
		@skill = Skill.find(1)
		@skills = @skill.allskills
		@organization = Organization.all
		render :file => "app/views/skill/sgcreate.html.erb"
	end

	def sgsave
		cnt = params[:skills]
		skillarray = Array.new


		puts "###################### $$$$$$$$$$$$$$$$$$$$$"
		puts cnt.class.inspect
		puts cnt['sk1'].class
		puts cnt['sk1']

		#render :text => 'update'

		skillarray = cnt['sk1'].split(', ')

		puts skillarray.class
		puts skillarray.inspect
		


#		render :text => 'created'		


		@grp = Group.find(params[:grpsel])
		@skill = @grp.skills.new
		@grp.skill = skillarray
		@skill.allskills = skillarray
		@skill.save
		@grp.save
		if((@grp.save)||(@skill.save))
			flash[:notice] = 'Skills Successfully Created'
			@grp = Group.order("name").page(params[:page]).per(2)			
			redirect_to :action => "allGroupSkills"		
		end
	end

	def sgshow
		@organization = Organization.all
		render :file => "app/views/skill/sgshow.html.erb"
	end

	def sgdisplay

		puts "###########################"
		puts params[:grpsel]
		@group = Group.find(params[:grpsel])
		@skills = @group.skills.order('id desc').limit(1).all	
		puts @skills
		@skills.each do |s| 
			@allskills = s.allskills.split('-')
			@allskills.reject!{|element| element.empty?} 
			@allskills.delete_at(0)
			#@allskills.shift 
		end

		puts @allskills.inspect
		render :file => 'app/views/skill/sgdisplay.html.erb'
	end

	
	def spcreate
		@organization = Organization.all
		render :file => "app/views/skill/spcreate.html.erb"
	end

	def skillsearch
		@grp = Group.find(params[:id])
		@skills = @grp.skills.all
		@skills.each do |s| 
			@allskills = s.allskills.split('-')
			@allskills.reject!{|element| element.empty?} 
			#@allskills.shift 
		end
		render :partial => "skillssearchresult.html.erb"
	end



	before_filter :set_search

	def set_search
    #render :text => params.inspect and return
		@search=Group.search(params[:q])
		@search1 = Person.search(params[:q])
	end

	
	def allGroupSkills
		@skill = Skill.all
		@q = Group.search(params[:q])
		@groups = @q.result.order("id").page(params[:page]).per(3)
		render :file => 'app/views/skill/allgroupskills.html.erb'
	end
	
	def allPersonSkills
		@skill = Skill.all
		@q = Person.search(params[:q])
		@people = @q.result.order("id").page(params[:page]).per(3)
		render :file => 'app/views/skill/allpersonskills.html.erb'
	end


	def skillviewsearch
		@grp = Group.find(params[:id])
		@skills = @grp.skills.all
		@skills.each do |s| 
			@allskills = s.allskills.split('-')
			@allskills.reject!{|element| element.empty?} 
			@allskills.shift 
		end
		render :partial => "skillssearchresult.html.erb"
	end

	
	def spsave
		@prsn = Person.find(params[:prsnid])
		@skill = @prsn.skills.new
		@prsn.skill = params[:skills]
		@skill.allskills = params[:skills]
		@prsn.save
		@skill.save
		if((@prsn.save)||(@skill.save))
			flash[:notice] = 'Skills Successfully Created'
			redirect_to :action => "allPersonSkills"		
		end
	end

	def spshow
		@organization = Organization.all
		render :file => "app/views/skill/spshow.html.erb"
	end

	def spdisplay
		begin
		@prsn = Person.find(params[:prsnid])
		@skills = @prsn.skills.order('id asc').limit(1).all
		@skills.each do |s| 
			@allskills = s.allskills.split('-')
			@allskills.reject!{|element| element.empty?} 
			@allskills.shift
		end
		rescue
		end
		render :file => 'app/views/skill/spdisplay.html.erb'
	end

	def usrskilledit


		
		

		@prsn = Person.find(params[:pid])
		@grp = Group.find(params[:gid])
		@skills = @grp.skills.all
		#@allskills = @grp.skill.split('-').reject!{|element| element.empty?}
		@skills.each do |s| 
			@allskills = s.allskills.split('-')
			@allskills.reject!{|element| element.empty?} 
			@allskills.shift 
			
		end

		@usrskill = @prsn.skills.all
		@usrskill.each do |s| 
			@totalusrskills = s.allskills.split('-')
			@totalusrskills.reject!{|element| element.empty?} 
			@totalusrskills.shift
			
		end

			puts @allskills.inspect
			puts @totalusrskills.inspect
		@skill = Skill.find(params[:sid])
		@@sk1 = @skill
		render :file => 'app/views/skill/usrskilleditview.html.erb'
	end

	def usrskillupdate
		@@sk1.person_id = params[:prsnsel]
		@@sk1.allskills = params[:skills]
		@person = Person.find(params[:prsnsel])
		@person.skill = params[:skills]
		@person.save
		@@sk1.save

		if(@person.save)
				flash[:notice] = 'Skills Updated Successfully'
				redirect_to :action => "allPersonSkills"
		end
		
	end

	def grpskilledit
		@skill1 = Skill.find(1)
		@@skill = @skill1
		@skills1 = @skill1.allskills
		@grp = Group.find(params[:gid])
		@sk = @grp.skills.find(params[:sid])
		@@skillobj = @sk
		@skills = @grp.skills.all
		@@group = @grp
		@skills.each do |s| 
			@allskills = s.allskills.split('-')
			@allskills.reject!{|element| element.empty?} 
			#@allskills.shift 
		end
			puts @allskills.inspect

			@@previousskills = @allskills

			puts @@previousskills.inspect
			
		render :file => 'app/views/skill/grpeditview.html.erb'
	end

	def groupskilledit
		@skill1 = Skill.find(1)
		@@skill = @skill1
		@skills1 = @skill1.allskills

		@@skillobj = Skill.find(params[:sid])


		@grp = Group.find(params[:gid])
		@@group = @grp
		@allskills = @grp.skill.split('-').reject!{|element| element.empty?}
		puts @allskills.class

			@@previousskills = @allskills
			
		render :file => 'app/views/skill/grpskilleditview.html.erb'
	end



	def grpskillupdate
		cnt = params[:skills]
		skillarray = Array.new
		cnt.keys.each do |k|
			skillarray << cnt[k]
		end
	

		puts "########## Previou Values ##############"
		puts @@previousskills.inspect
		puts @@previousskills.delete_at(0)
		puts @@previousskills.class.inspect
		puts @@previousskills.inspect

		puts "########### Current Skills ##############"
		puts cnt.inspect
		puts cnt['sk1'].class	
		puts cnt['sk1'].inspect
	
		current_value = [cnt['sk1']]
		puts current_value.class
		puts current_value.inspect
				
	    @prvskill = @@previousskills
		puts "########### Skills ##############"
		updated_skills = @prvskill + current_value
		puts updated_skills.inspect


		#render :text => 'update'

		@@group.skill = updated_skills
		@@group.save

		@@skillobj.allskills = updated_skills
		@@skillobj.save
		
		redirect_to :action => "allGroupSkills"
	end

	def skilldestroy
		@personid = Person.find(params[:id])
		@personid.skill=''
		@personid.save
		if(true)
		flash[:notice] = 'Skill Successfully Deleted'
		redirect_to :action => "allPersonSkills"
		end		
	end

end
