class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :device_name
      t.string :device_platform
      t.integer :min_price

      t.timestamps
    end
  end
end
