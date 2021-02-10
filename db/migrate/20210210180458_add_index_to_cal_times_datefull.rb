class AddIndexToCalTimesDatefull < ActiveRecord::Migration[6.1]
  def change
    add_index :cal_times, :datefull, unique: true
  end
end
