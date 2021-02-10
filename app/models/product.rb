class Product < ApplicationRecord
    has_many :microposts, dependent: :destroy
end
