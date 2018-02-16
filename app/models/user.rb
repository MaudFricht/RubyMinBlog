class User < ApplicationRecord

    has_many :posts

    validates :username, :email, presence: true, uniqueness: true
    validates :username, length: { maximum: 150 }

end
