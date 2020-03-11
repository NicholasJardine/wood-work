class Customer < ApplicationRecord

    validates :full_name, presence: true
    validates :email, presence: true
    validates :cell, presence: true
    validates :shipping_address, presence: true
end
