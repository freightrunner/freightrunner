class BookingHistory < ActiveRecord::Base
	belongs_to :carrier
	belongs_to :user
end
