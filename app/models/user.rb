class User < ApplicationRecord
  has_many :posts
  has_one :session
  validates :password, presence: true
end
