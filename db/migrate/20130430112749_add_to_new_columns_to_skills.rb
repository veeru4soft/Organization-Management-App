class AddToNewColumnsToSkills < ActiveRecord::Migration
  def self.up
			add_column :skills, :skill3, :string
			add_column :skills, :skill4, :string
			add_column :skills, :skill5, :string
			add_column :skills, :skill6, :string
			add_column :skills, :skill7, :string
			add_column :skills, :skill8, :string
			add_column :skills, :skill9, :string
			add_column :skills, :skill10, :string
  end
	def self.down
			remove_column :skills, :skill3
			remove_column :skills, :skill4
			remove_column :skills, :skill5
			remove_column :skills, :skill6
			remove_column :skills, :skill7
			remove_column :skills, :skill8
			remove_column :skills, :skill9
			remove_column :skills, :skill10
	end
end
