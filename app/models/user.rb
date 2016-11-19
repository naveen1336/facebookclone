class User < ApplicationRecord
has_secure_password
has_friendship
has_one :profile
has_many :messages
has_many :posts
has_many :subscriptions



end
