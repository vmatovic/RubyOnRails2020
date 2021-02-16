class Promotion < ApplicationRecord
    validates :promo_name, length: { maximum: 30 }, presence: true
    validates :promo_cost, numericality: { greater_than: 0 }, presence: true
    has_many :sales
end
