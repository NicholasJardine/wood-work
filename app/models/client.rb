class Client < ApplicationRecord
  belongs_to :buyer
  belongs_to :order
end
