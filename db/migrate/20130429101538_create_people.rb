class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :phnum
	  t.references :group

      t.timestamps
    end
	  add_index :people, :group_id
  end
end
