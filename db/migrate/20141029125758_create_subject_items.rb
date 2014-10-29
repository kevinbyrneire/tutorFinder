class CreateSubjectItems < ActiveRecord::Migration
  def change
    create_table :subject_items do |t|
      t.references :tutors, index: true
      t.references :subjects, index: true

      t.timestamps
    end
  end
end
