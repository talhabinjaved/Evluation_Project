class Customer < User
    has_many :tricks, dependent: :destroy
    has_many :challenges, through: :tricks
end