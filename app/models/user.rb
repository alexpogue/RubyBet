class User < ApplicationRecord
  has_many :microposts
  has_many :bets
  validates :name, presence: true
  validates :email, presence: true
end
