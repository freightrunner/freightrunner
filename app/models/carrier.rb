class Carrier < ActiveRecord::Base
	belongs_to :user
	has_many :bookings
	#has_one :booking_history, through :bookings
	#has_many :loads, through :bookings
	accepts_nested_attributes_for :bookings
end
