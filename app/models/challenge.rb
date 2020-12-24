class Challenge < ApplicationRecord
  belongs_to :brand
  has_many :tricks
  has_many :customers, through: :tricks
end
