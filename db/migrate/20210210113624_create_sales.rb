class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.integer :amount_sold

      t.timestamps
    end
  end
end
