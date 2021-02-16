class Product < ApplicationRecord
    has_many :microposts, dependent: :destroy
    has_many :sales
    has_many :costs
    has_many :man_prods
    has_many :manufacturers, through: :man_prods
end
