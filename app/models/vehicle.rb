class Vehicle < ApplicationRecord
  belongs_to :deal
  belongs_to :category

  has_many :orders
  has_many :customers, :through => :orders
end
