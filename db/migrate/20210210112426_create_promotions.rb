class CreatePromotions < ActiveRecord::Migration[6.1]
  def change
    create_table :promotions do |t|
      t.string :promo_name
      t.integer :promo_cost
      t.date :begin_date
      t.date :end_date

      t.timestamps
    end
  end
end
