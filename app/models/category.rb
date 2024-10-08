class Category < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, length: { in: 3..15 }
end
