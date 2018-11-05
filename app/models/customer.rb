class Customer < ApplicationRecord
  belongs_to :province

  has_many :orders 
  has_many :vehicles , :through =>  :orders
end
