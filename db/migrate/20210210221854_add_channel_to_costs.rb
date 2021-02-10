class AddChannelToCosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :costs, :channel, foreign_key: true
  end
end
