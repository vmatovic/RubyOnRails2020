class Product < ApplicationRecord
    has_many :microposts, dependent: :destroy
    has_many :sales
    has_many :costs
end
