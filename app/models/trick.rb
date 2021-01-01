class Trick < ApplicationRecord
    belongs_to :customer
    belongs_to :challenge
    has_one_attached :image
    has_one_attached :video
end
