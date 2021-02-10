class CreateCosts < ActiveRecord::Migration[6.1]
  def change
    create_table :costs do |t|
      t.float :unit_cost
      t.float :unit_price

      t.timestamps
    end
  end
end
