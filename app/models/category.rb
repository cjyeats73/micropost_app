class Category < ApplicationRecord
    validates :name, length: {in: 3..25}
    validates :name, uniqueness:
    validates :name, presence: true 
end