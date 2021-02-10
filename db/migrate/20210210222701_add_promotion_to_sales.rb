class AddPromotionToSales < ActiveRecord::Migration[6.1]
  def change
    add_reference :sales, :promotion, foreign_key: true
  end
end
