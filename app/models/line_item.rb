class LineItem < ApplicationRecord
  #this what i had initially
  # belongs_to :vehicle

  #this is what i added.
  has_one :vehicle
  belongs_to :order
end
