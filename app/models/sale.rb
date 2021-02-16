class Sale < ApplicationRecord
    validates :amount_sold, numericality: { greater_than: 0 }, presence: true
    belongs_to :cal_time, optional: true
    belongs_to :channel, optional: true
    belongs_to :product, optional: true
    belongs_to :promotion, optional: true
    belongs_to :user, optional: true
end
