class Trick < ApplicationRecord
    validates :body, presence: true, length: { minimum: 10 }
    belongs_to :customer
    belongs_to :challenge
    has_one :reward
    has_one_attached :image
    has_one_attached :video
end
