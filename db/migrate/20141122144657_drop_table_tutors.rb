class DropTableTutors < ActiveRecord::Migration
  def change
    drop_table :tutors
  end
end
