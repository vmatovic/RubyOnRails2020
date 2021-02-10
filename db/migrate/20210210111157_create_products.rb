class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :model_name
      t.string :manufacturer
      t.string :platform
      t.float :min_price

      t.timestamps
    end
  end
end
