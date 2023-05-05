class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 50}
    has_many :microposts, dependent: :destroy
    has_many :follower_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
    has_many :following, through: :follower_relationships, source: :followed
    has_many :followed_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
    has_many :followers, through: :followed_relationships, source: :follower
    VALID_EMAIL_REGEX = /\A[\w\.\+\-]*\w@[\w\-]+\.[a-zA-Z]+\z/i
    validates :email, format: {with: VALID_EMAIL_REGEX}
end
