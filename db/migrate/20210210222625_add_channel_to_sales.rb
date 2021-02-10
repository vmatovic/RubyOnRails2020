class AddChannelToSales < ActiveRecord::Migration[6.1]
  def change
    add_reference :sales, :channel, foreign_key: true
  end
end
