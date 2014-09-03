class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.belongs_to :carrier
      t.belongs_to :load
      t.datetime :booking_date

      t.timestamps
    end
  end
end
