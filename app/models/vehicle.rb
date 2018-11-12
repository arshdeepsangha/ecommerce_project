class Vehicle < ApplicationRecord
  after_update :update_in_stock

  def update_in_stock
    if stock > 0 
      is_available = true
    end
  end



  belongs_to :deal
  belongs_to :category
  #belongs_to :line_item

  # has_many :orders
  # has_many :users, :through => :orders

  paginates_per 5

  mount_uploader :image , ImageUploader

  validates :model , presence: true, uniqueness: true
  validates :manufacturer , presence: true
  validates :price , presence: true
  validates :body_type , presence: true
  validates :engine , presence: true
  validates :transmission , presence: true
  validates :stock , presence: true
  validates :deal_id , presence: true
  validates :category_id , presence: true

end
