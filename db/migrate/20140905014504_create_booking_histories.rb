class CreateBookingHistories < ActiveRecord::Migration
  def change
    create_table :booking_histories do |t|

      t.timestamps
    end
  end
end
