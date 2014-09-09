class Load < ActiveRecord::Base
	belongs_to :user
	has_many :bookings
	has_many :carriers, through: :bookings
	accepts_nested_attributes_for :bookings
	accepts_nested_attributes_for :carriers

	validates :origin, presence: true
	validates :destination, presence: true
	validates :pick_date, presence: true
	validates :drop_date, presence: true
end
