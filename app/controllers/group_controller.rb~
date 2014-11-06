class GroupController < ApplicationController
	def grpcreate
		@org = Organization.all
		render :file => "app/views/group/grpcreate.html.erb"
	end
	def grpsave
		@organization = Organization.find(params[:orgsel])
		@group = @organization.groups.new
		@group.name = params[:grpname]
		if(@group.save)
			flash[:notice] = 'Group Successfully Created'
			@grp = Group.order("id").page(params[:page]).per(2)
			redirect_to  :action => 'groupallshow'
		end
	end
	def search
		@organization = Organization.all
		render :file => "app/views/group/grpshow.html.erb"
	end

	def groupsearch
		@organization = Organization.find(params[:id])
		@groups = @organization.groups.all
		render :partial => "groupsearchresult.html.erb"
	end

	def groupSkillSearch
		@organization = Organization.find(params[:id])
		@groups = @organization.groups.all
		render :partial => "groupskillsearchresult.html.erb"
	end
	
	def groupshow

		@grp = Group.find(params[:grpsel])
		@q = @grp.people.search(params[:q])
		@prsn = @q.result.order("id").page(params[:page]).per(2)
		render :file => "app/views/group/grpdisplay.html.erb"
	end

	def grpedit
		@org = Organization.all
		@grp = Group.find(params[:grpid])
		@@gr1 = @grp
		render :file => "app/views/group/grpeditview.html.erb"
	end

	def grpupdate
		@@gr1.organization_id = params[:orgsel]
		@@gr1.name = params[:grpname]
		if(@@gr1.save)
			flash[:notice] = 'Group Successfully Updated'
			@grp = Group.order("name").page(params[:page]).per(2)			
			render :file => 'app/views/group/groupallshow.html.erb'		
		end
	end

	def grpdestroy
		grp = Group.find(params[:id])
		grp.destroy
		render :file => 'app/views/group/remsuccess.html.erb'
			
	end

	before_filter :set_search

	def set_search
    #render :text => params.inspect and return
		@search=Group.search(params[:q])
		@search1 = Person.search(params[:q])
	end

	def groupallshow
		@q = Group.search(params[:q])
		@grp = @q.result.order("id").page(params[:page]).per(3)
		render :file => "app/views/group/groupallshow.html.erb"
	end

	def groupDisplayRange
		@grp = Group.order("name").page(params[:page]).per(params[:id])
		render :partial => "groupDisplayRange.html.erb"
	end
end
