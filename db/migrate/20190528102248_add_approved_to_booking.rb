class AddApprovedToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :approved, :string
  end
end
