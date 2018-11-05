class Vehicle < ApplicationRecord
  belongs_to :deal
  belongs_to :category

  has_many :orders
  has_many :customers, :through => :orders

  paginates_per 5

  mount_uploader :image , ImageUploader
end
