class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skill1
      t.string :skill2
      t.references :person

      t.timestamps
    end
    add_index :skills, :person_id
  end
end
