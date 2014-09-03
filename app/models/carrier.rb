class Carrier < ActiveRecord::Base
	has_many :bookings
	has_many :loads, through :bookings
	accepts_nested_attributes_for :bookings
end
