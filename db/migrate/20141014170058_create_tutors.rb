class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :firstname
      t.string :lastname
      t.date :age
      t.string :phone
      t.string :location
      t.string :email
      t.string :subjects

      t.timestamps
    end
  end
end
