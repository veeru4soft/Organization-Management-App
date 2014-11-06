class OrganizationController < ApplicationController
	def index 
		org = Organization.all
		grp = Group.all
		prsn = Person.all
		@org = org.count
		@grp = grp.count
		@prsn = prsn.count
		render :file => "app/views/organization/oindex.html.erb"
	end

	
	def show
		@org = Organization.find(params[:orgsel])
		@q = @org.people.search(params[:q])
    	@data = @q.result.order("id").page(params[:page]).per(4)
	end
	
	def grpshow
		@org = Organization.find(params[:orgsel])
		@q = @org.groups.search(params[:q])
    	@grp = @q.result.order("id").page(params[:page]).per(3)
		render :file => 'app/views/organization/grpshow.html.erb'	
	end
	
	def view
		@org = Organization.all
		render :file => 'app/views/organization/oview.html.erb'
	end
	
	def viewgrp
		@org = Organization.all
		render :file => 'app/views/organization/grpview.html.erb'
	end	

	def orgcreate
		render :file => "app/views/organization/ocreate.html.erb"
	end

	def orgsave
		@organization = Organization.create(params[:organization])
		if @organization
			flash[:notice] = "Organization Successfully Created"
			redirect_to :action => "allorgshow"
		end	
	end

	before_filter :set_search#, :only => :allorgshow

	def set_search
		@search2 = Person.search(params[:q])
    	@search1 = Group.search(params[:q])
		@search=Organization.search(params[:q])
	end

	
	def allorgshow
        
		@q = Organization.search(params[:q])
    	@organization = @q.result.order("id").page(params[:page]).per(2)
			
		#@organization = Organization.order("name").page(params[:page]).per(2)
		render :file => "app/views/organization/orgallshow.html.erb"
	end
	
	def pageper
		@org = Organization.order("name").page(params[:page]).per(params[:id])
		render :partial => "pagepershow.html.erb"
	end

	def orgedit
		@org = Organization.find(params[:oid])	
		@@or1 = @org
		render :file => "app/views/organization/oeditview.html.erb"
	end

	def orgupdate
		@@or1.name = params[:orgname]
		@@or1.city = params[:orgcity]
		@@or1.state = params[:orgstate]
		@@or1.phnum = params[:orgph]
		@@or1.email = params[:orgemail]
		@@or1.website = params[:orgweb]
		if(@@or1.save) 
			flash[:notice] = "Organization Successfully Updated"
			redirect_to :action => "allorgshow"	
		end
	end

	def orgdestroy
		@org = Organization.find(params[:id])
		if(@org.destroy)
		flash[:notice] = 'Organization Successfully Deleted'
		redirect_to :action => "allorgshow"
		end		
	end
end

