class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 50}
    has_many :microposts, dependent: :destroy
    has_many :follower_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
    has_many :following, through: :follower_relationships, source: :followed
    has_many :followed_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
    has_many :followers, through: :followed_relationships, source: :follower
    VALID_EMAIL_REGEX = /\A[\w\.\+\-]*\w@[\w\-]+\.[a-zA-Z]+\z/i
    validates :email, format: {with: VALID_EMAIL_REGEX}

    # Follows a user.
    def follow(other_user) 
        
    following << other_user unless self == other_user

    end 
    # Unfollows a user.
    def unfollow(other_user)
        following.delete(other_user)
    end 
    # Returns true if the current user is following the other user. 
    def following?(other_user)
        following.include?(other_user)
    end 
end
