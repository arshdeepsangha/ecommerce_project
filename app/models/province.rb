class Province < ApplicationRecord
    has_one :customer
    
    has_many :users
    
    validates :name , presence: true, uniqueness: true
end
