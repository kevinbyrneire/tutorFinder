class AddReferenceFromSubjectItemsToTutor < ActiveRecord::Migration
  def change
    add_reference :subject_items, :tutor, index: true
    add_reference :subject_items, :subject, index: true
  end
end
