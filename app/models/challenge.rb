class Challenge < ApplicationRecord
  belongs_to :brand
  has_many :tricks
  has_many :customers, through: :tricks
  has_one_attached :image
  has_one_attached :video
end
