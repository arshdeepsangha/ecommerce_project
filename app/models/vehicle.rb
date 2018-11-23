class Vehicle < ApplicationRecord
  belongs_to :deal
  belongs_to :category
  has_many :line_items, dependent: :destroy

  has_many :orders, through: :line_items

  paginates_per 5

  mount_uploader :image, ImageUploader

  validates :model, presence: true, uniqueness: true
  validates :manufacturer, presence: true
  validates :price, presence: true
  validates :body_type, presence: true
  validates :engine, presence: true
  validates :transmission, presence: true
  validates :stock, presence: true
  validates :deal_id, presence: true
  validates :category_id, presence: true
end
