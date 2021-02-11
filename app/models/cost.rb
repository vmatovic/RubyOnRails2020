class Cost < ApplicationRecord
    belongs_to :cal_time, :channel, :product
end
