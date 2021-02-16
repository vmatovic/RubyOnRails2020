class ManProd < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :product
end
