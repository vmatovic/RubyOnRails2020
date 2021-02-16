class Country < ApplicationRecord
    validates :name, length: { maximum: 30 }, presence: true
    validates :region, length: { maximum: 30 }, presence: true
    has_many :users
end
