class Customer < ApplicationRecord
  
  has_secure_password
  
  belongs_to :province
  has_many :orders 
  has_many :vehicles , :through =>  :orders

  validates :username , presence: true, uniqueness: true
  validates :password , presence: true
  validates :firstname , presence: true
  validates :lastname , presence: true
  validates :address , presence: true
  validates :city , presence: true
  validates :email , presence: true
  validates :province_id , presence: true

end
