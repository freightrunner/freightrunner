class BookingHistory < ActiveRecord::Base
	belongs_to :booking
	belongs_to :carrier
end
