class ChangeTableNameBookinToBooking < ActiveRecord::Migration
  def up
    rename_table :bookins, :bookings
  end

  def down
    rename_table :bookings, :bookins
  end
end
