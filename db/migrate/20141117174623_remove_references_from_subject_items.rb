class RemoveReferencesFromSubjectItems < ActiveRecord::Migration
  def change
    remove_reference :subject_items, :tutors
    remove_reference :subject_items, :subjects
  end
end
