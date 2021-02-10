class AddProductIdToMicroposts < ActiveRecord::Migration[6.1]
  def change
    add_column :microposts, :product_id, :integer
  end
end
