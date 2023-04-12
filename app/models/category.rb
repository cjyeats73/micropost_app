class Category < ApplicationRecord
    validates :name, length: {in: 3..25}
    validates :name, uniqueness: true
    has_one :name
    validates :name, presence: true 
end