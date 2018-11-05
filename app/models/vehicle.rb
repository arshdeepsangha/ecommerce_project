class Vehicle < ApplicationRecord
  belongs_to :deal
  belongs_to :category
end
