class CalMonthSale < ApplicationRecord
    validates :dollars, numericality: { greater_than: 0 }
end
