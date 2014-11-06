class AddToNewColumnsToPerson < ActiveRecord::Migration
  def self.up
   add_column :people,:fname,:string  
   add_column :people,:skill,:string
	 add_column :people, :place, :string
	 add_column :people, :email, :string
	 add_column :people, :propic, :binary
   
end
 def self.down
	remove_column :people,:fname
	remove_column :people,:skill
  remove_column :people, :place
	remove_column :people, :email
	remove_column :people, :propic
end
end
