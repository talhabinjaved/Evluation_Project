class Challenge < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :prize, presence: true
  validates :expiry_date, presence: true
  
  belongs_to :brand
  has_many :tricks, dependent: :destroy
  has_many :customers, through: :tricks
  has_one :reward, dependent: :destroy
  has_one_attached :image, dependent: :destroy
  has_one_attached :video, dependent: :destroy

  scope :incomplete_challenges, -> { where(is_complete: false)}
end
