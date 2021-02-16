class Cost < ApplicationRecord
    validates :unit_cost, numericality: { greater_than: 0 }, presence: true
    validates :unit_price, numericality: { greater_than: 0 }, presence: true
    belongs_to :cal_time, optional: true
    belongs_to :channel, optional: true
    belongs_to :product, optional: true
end
