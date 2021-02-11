class Cost < ApplicationRecord
    belongs_to :cal_time
    belongs_to :channel
    belongs_to :product
end
