class Product < ApplicationRecord
    validates :device_name, length: { maximum: 30 }, presence: true
    validates :device_platform, length: { maximum: 30 }, presence: true
    validates :min_price, numericality: { greater_than: 0 }, presence: true
    has_many :microposts, dependent: :destroy
    has_many :sales
    has_many :costs
    has_many :man_prods
    has_many :manufacturers, through: :man_prods
end
