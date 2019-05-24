class AddColumnsToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :start_at, :date
    add_column :bookings, :end_at, :date
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :sock, foreign_key: true
  end
end
