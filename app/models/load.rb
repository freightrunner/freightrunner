class Load < ActiveRecord::Base
	belongs_to :user
	has_many :bookings
	has_many :carriers, through :bookings
	accepts_nested_attributes_for :bookings
	accepts_nested_attributes_for :carriers, as :bookings
end
