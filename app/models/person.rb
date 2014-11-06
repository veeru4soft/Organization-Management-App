class Person < ActiveRecord::Base
	
  belongs_to :group
  belongs_to :organization
  has_many :skills, :dependent => :destroy
  attr_accessible :name, :phnum, :dob, :fname, :email
end
