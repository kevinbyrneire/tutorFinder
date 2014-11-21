class CreateBookins < ActiveRecord::Migration
  def change
    create_table :bookins do |t|
      t.references :tutor, index: true

      t.timestamps
    end
  end
end
