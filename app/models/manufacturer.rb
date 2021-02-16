class Manufacturer < ApplicationRecord
    has_many :man_prods
    has_many :products, through: :man_prods
end
