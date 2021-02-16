class Manufacturer < ApplicationRecord
    validates :name, length: { maximum: 30 }, presence: true
    validates :num_employees, numericality: { only_integer: true, greater_than: 0 }, presence: true
    has_many :man_prods
    has_many :products, through: :man_prods
end
