class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  belongs_to :province
  has_many :orders, dependent: :destroy
  has_one_attached :file
end
