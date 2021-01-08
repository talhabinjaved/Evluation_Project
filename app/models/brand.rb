class Brand < User
    has_many :challenges, dependent: :destroy
    has_many :tricks, through: :challenges
end

