class CalTime < ApplicationRecord
    has_many :sales
    has_many :costs
end
