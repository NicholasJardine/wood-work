class Customer < ApplicationRecord
    has_one :order

    validates :full_name, presence: true
    validates :email, presence: true
    validates :cell, presence: true
    validates :shipping_address, presence: true
end
