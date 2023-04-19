class User < ApplicationRecord
VALID_EMAIL_REGEX = /\A[\w\.\+\-]*\w@[\w\-]+\.[a-zA-Z]+\z/i
validates :email, format: {with: VALID_EMAIL_REGEX}
end
