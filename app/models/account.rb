class Account < ActiveRecord::Base
	has_many :users
	has_many :loads, through :users
	accepts_nested_attributes_for :users
	has_many :carriers, through :users
	accepts_nested_attributes_for :loads
	accepts_nested_attributes_for :carriers

	
end
