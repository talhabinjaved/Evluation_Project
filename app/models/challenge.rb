class Challenge < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :prize, presence: true
  validates :expiry_date, presence: true
  belongs_to :brand
  has_many :tricks
  has_many :customers, through: :tricks
  has_one_attached :image
  has_one_attached :video
end
