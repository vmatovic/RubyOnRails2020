class Sale < ApplicationRecord
    belongs_to :cal_time, :channel, :product, :promotion, :user
end
