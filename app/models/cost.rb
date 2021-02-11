class Cost < ApplicationRecord
    belongs_to :cal_time, optional: true
    belongs_to :channel, optional: true
    belongs_to :product, optional: true
end
