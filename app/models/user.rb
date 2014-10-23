class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :loads
  accepts_nested_attributes_for :loads
  has_and_belongs_to_many :accounts
  has_many :carriers
 	has_many :bookings
  	
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true,
                    uniqueness: true
  validates :account_id, presence: true
  	
  def full_name
  	first_name + " " + last_name
  end

  def set_account
  end
end
