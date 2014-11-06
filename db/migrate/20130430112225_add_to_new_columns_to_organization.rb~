class AddToNewColumnsToOrganization < ActiveRecord::Migration
  def self.up
			add_column :organizations,:city,:string  
   		add_column :organizations,:state,:string
		  add_column :organizations, :phnum, :integer
			add_column :organizations, :email, :string
			add_column :organizations, :website, :string
  end
	def self.down
			remove_column :organizations,:city,:string  
   		remove_column :organizations,:state,:string
		  remove_column :organizations, :phnum, :integer
			remove_column :organizations, :email, :string
			remove_column :organizations, :website, :string
	end
end
