class CalTime < ApplicationRecord
    validates :day_number_in_week, numericality: { only_integer: true, greater_than: 0 }, presence: true
    validates :day_number_in_month, numericality: { only_integer: true, greater_than: 0 }, presence: true
    validates :calendar_week_number, numericality: { only_integer: true, greater_than: 0 }, presence: true
    has_many :sales
    has_many :costs
end
