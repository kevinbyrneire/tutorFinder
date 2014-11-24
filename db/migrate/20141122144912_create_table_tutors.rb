class CreateTableTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :firstname
	  t.string :lastname
      t.string :phone
      t.string :email
	  t.string :location
	  t.string :password_digest
    end
  end
end
