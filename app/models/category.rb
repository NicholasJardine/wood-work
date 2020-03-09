class Category < ApplicationRecord
    has_many :products
    validates :title, presence: true, uniqueness: true
    validates :main, presence: true
end
