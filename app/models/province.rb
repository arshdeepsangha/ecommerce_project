class Province < ApplicationRecord
    has_one :customer

    validates :name , presence: true, uniqueness: true
end
