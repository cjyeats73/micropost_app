class User < ApplicationRecord
VALID_EMAIL_REGEX = /^[\w\.\+\-]*\w@[\w\-]+\.[a-zA-Z]+$/i
validates :email, format: {with: VALID_EMAIL_REGEX}
end
