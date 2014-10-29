class AddColumnSubjectToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :subject, :string
  end
end
