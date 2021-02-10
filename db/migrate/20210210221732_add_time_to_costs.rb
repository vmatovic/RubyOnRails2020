class AddTimeToCosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :costs, :cal_time, foreign_key: true
  end
end
