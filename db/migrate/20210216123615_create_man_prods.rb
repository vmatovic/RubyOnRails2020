class CreateManProds < ActiveRecord::Migration[6.1]
  def change
    create_table :man_prods do |t|
      t.references :manufacturer, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
