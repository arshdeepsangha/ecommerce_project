class Order < ApplicationRecord
  # belongs_to :vehicle
  belongs_to :user

  belongs_to :order_status
  has_many :line_items
end
