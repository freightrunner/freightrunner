class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :loads
  accepts_nested_attributes_for :loads
  belongs_to :account
  has_many :carriers
 	has_many :bookings
  	
  	validates :first_name, :last_name, :email, presence: true
  	
  	def full_name
  		first_name + " " + last_name
  	end
end
