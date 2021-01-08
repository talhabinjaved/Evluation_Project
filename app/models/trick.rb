class Trick < ApplicationRecord
    validates :body, presence: true, length: { minimum: 10 }
    belongs_to :customer
    belongs_to :challenge
    has_one :reward, dependent: :destroy
    has_one_attached :image, dependent: :destroy
    has_one_attached :video, dependent: :destroy
end
