class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 50}
    has_many :microposts, dependent: :destroy
    VALID_EMAIL_REGEX = /\A[\w\.\+\-]*\w@[\w\-]+\.[a-zA-Z]+\z/i
    validates :email, format: {with: VALID_EMAIL_REGEX}
end
