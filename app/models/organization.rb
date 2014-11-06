class Organization < ActiveRecord::Base

  attr_accessible :name, :email, :city, :state, :website, :phnum
	has_many :groups, :dependent => :destroy
	has_many :people, :dependent => :destroy
	
end
