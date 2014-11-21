class AddColumnDateToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :datetime, :datetime
  end
end
