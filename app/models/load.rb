class Load < ActiveRecord::Base
	belongs_to :user
	has_many :bookings
	has_many :carriers, through :bookings
end
