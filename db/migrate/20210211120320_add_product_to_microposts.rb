class AddProductToMicroposts < ActiveRecord::Migration[6.1]
  def change
    add_reference :microposts, :product,  foreign_key: true
  end
end
