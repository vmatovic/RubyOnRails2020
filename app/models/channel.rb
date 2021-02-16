class Channel < ApplicationRecord
    validates :desc, length: { maximum: 50 }, presence: true
    validates :classs, length: { maximum: 30 }, presence: true
    validates :total, length: { maximum: 30 }, presence: true
    has_many :sales
    has_many :costs
end
