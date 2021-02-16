class CreateManufacturers < ActiveRecord::Migration[6.1]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.integer :num_employees

      t.timestamps
    end
  end
end
