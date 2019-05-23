class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :sock, foreign_key: true
      t.references :user, foreign_key: true
      t.date :start_at
      t.date :end_at

      t.timestamps
    end
  end
end
