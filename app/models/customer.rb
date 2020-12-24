class Customer < User
    has_many :tricks
    has_many :challenges, through: :tricks
end