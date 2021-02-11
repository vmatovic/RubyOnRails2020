class Sale < ApplicationRecord
    belongs_to :cal_time
    belongs_to :channel
    belongs_to :product
    belongs_to :promotion
    belongs_to :user
end
