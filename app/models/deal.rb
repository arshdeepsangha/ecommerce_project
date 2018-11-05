class Deal < ApplicationRecord
    has_many :vehicles
    validates :name , presence: true, uniqueness: true
    validates :deal_rate , presence: true
end
