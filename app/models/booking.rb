class Booking < ActiveRecord::Base
	belongs_to :carrier
	belongs_to :load
end