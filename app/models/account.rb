class Account < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_many :loads, through :users	
	accepts_nested_attributes_for :loads
	has_many :carriers, through :users	
	accepts_nested_attributes_for :carriers

	
end
