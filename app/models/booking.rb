class Booking < ActiveRecord::Base
	belongs_to :carrier
	belongs_to :load
	has_one :booking_history
	accepts_nested_attributes_for :booking_history
end