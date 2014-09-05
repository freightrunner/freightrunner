class Carrier < ActiveRecord::Base
	has_one :booking_history, through :bookings
	has_many :bookings
	has_many :loads, through :bookings
	accepts_nested_attributes_for :bookings
end
