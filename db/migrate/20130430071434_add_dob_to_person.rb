class AddDobToPerson < ActiveRecord::Migration
  def change
    add_column :people, :dob, :date
  end
end
