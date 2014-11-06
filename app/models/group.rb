class Group < ActiveRecord::Base

	
  belongs_to :organization
	has_many :people, :dependent => :destroy
	has_many :skills, :dependent => :destroy
  attr_accessible :name
end
