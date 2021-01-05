class Brand < User
    has_many :challenges
    has_many :tricks, through: :challenges
end

