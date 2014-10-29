class RemoveSubjectsFromTutors < ActiveRecord::Migration
  def change
    remove_column :tutors, :subjects, :string
  end
end
