class Addskillcommoncolumntoskill < ActiveRecord::Migration
  def self.up
	add_column :skills, :allskills, :string
  end

  def self.down
	remove_column :skills, :allskills
  end
end
