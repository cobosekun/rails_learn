class User < ApplicationRecord
  has_many :microposts
  validates :name, presence: true, length: {minimum:1, maximum: 50 }
  validates :email, presence: true, length: {minimum:1, maximum: 255 }, format: { with: URI::MailTo::EMAIL_REGEXP }
end
