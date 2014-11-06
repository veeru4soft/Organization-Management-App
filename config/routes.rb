Skillmanagementsystem::Application.routes.draw do
	#get 'organization/index'
	match 'ocreate', :controller => 'organization', :action => 'orgcreate'
	match 'orgsave', :controller => 'organization', :action => 'orgsave'
	match 'oview', :controller => 'organization', :action => 'view'
	match 'oviewgrp', :controller => 'organization', :action => 'viewgrp'
	match 'show', :controller => 'organization', :action => 'show'
	match 'allorgshow', :controller => 'organization', :action => 'allorgshow'
	match 'orgdestroy', :controller => 'organization', :action => 'orgdestroy'
	match 'orgedit/:oid', :controller => 'organization', :action => 'orgedit'
	match 'orgupdate', :controller => 'organization', :action => 'orgupdate'
	match 'pageper', :controller => 'organization', :action => 'pageper'
	match 'grpshow', :controller => 'organization', :action => 'grpshow'
	
	match 'gcreate', :controller => 'group', :action => 'grpcreate'
	match 'grpsave', :controller => 'group', :action => 'grpsave'
	match 'search', :controller => 'group', :action => 'search'
	match 'groupshow', :controller => 'group', :action => 'groupshow'
	match 'grpdestroy', :controller => 'group', :action => 'grpdestroy'
	match 'grpedit/:grpid', :controller => 'group', :action => 'grpedit'
	match 'grpupdate', :controller => 'group', :action => 'grpupdate'
	match 'grpallshow', :controller => 'group', :action => 'groupallshow'
	match 'groupsearch', :controller => 'group', :action => 'groupsearch'
	match 'groupskillsearch', :controller => 'group', :action => 'groupskillsearch'
	match 'groupDisplayRange', :controller => 'group', :action => 'groupDisplayRange'
	match 'groupSkillSearch', :controller => 'group', :action => 'groupSkillSearch'

	match 'pplcreate', :controller => 'person', :action => 'pplcreate'
	match 'pplsave', :controller => 'person', :action => 'pplsave'
	match 'pplshow', :controller => 'person', :action => 'pplshow'
	match 'ppldisplay', :controller => 'person', :action => 'ppldisplay'
	match 'ppldisplay/:prsnid', :controller => 'person', :action => 'ppldisplay'
	match 'ppldestroy', :controller => 'person', :action => 'ppldestroy'
	match 'ppledit/:pplid', :controller => 'person', :action => 'ppledit'
	match 'pplupdate', :controller => 'person', :action => 'pplupdate'
	match 'pplallshow', :controller => 'person', :action => 'personallshow'
	match 'peoplesearch', :controller => 'person', :action => 'peoplesearch'
	match 'peopleskillsearch', :controller => 'person', :action => 'peopleskillsearch'
	match 'peopleDisplayByPageRange', :controller => 'person', :action => 'peopleDisplayByPageRange'
	match 'peopleSkillViewSearch', :controller => 'person', :action => 'peopleSkillViewSearch'

	match 'spsave', :controller => 'skill', :action => 'spsave'
	match 'spshow', :controller => 'skill', :action => 'spshow'
	match 'sgcreate', :controller => 'skill', :action => 'sgcreate'
	match 'sgsave', :controller => 'skill', :action => 'sgsave'
	match 'sgshow', :controller => 'skill', :action => 'sgshow'
	match 'sgdisplay', :controller => 'skill', :action => 'sgdisplay'
	match 'spcreate', :controller => 'skill', :action => 'spcreate'
	match 'spdisplay', :controller => 'skill', :action => 'spdisplay'
	match 'skilldestroy', :controller => 'skill', :action => 'skilldestroy'
	match 'usrskilledit/:sid&:gid&:pid', :controller => 'skill', :action => 'usrskilledit'
	match 'usrskillupdate', :controller => 'skill', :action => 'usrskillupdate'
	match 'grpskilledit/:sid&:gid', :controller => 'skill', :action => 'grpskilledit'
	match 'groupskilledit/:sid&:gid', :controller => 'skill', :action => 'groupskilledit'
	match 'grpskillupdate', :controller => 'skill', :action => 'grpskillupdate'
	match 'skillsearch', :controller => 'skill', :action => 'skillsearch'	
	match 'skillviewsearch', :controller => 'skill', :action => 'skillviewsearch'
	match 'allGroupSkills', :controller => 'skill', :action => 'allGroupSkills'
	match 'allPersonSkills', :controller => 'skill', :action => 'allPersonSkills'

	match 'showAllSkills', :controller => 'skill', :action => 'showAllSkills'
	
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'organization#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
