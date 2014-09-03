class Carrier < ActiveRecord::Base
	has_many :bookings
	has_many :loads, through :bookings
end
