class CreateCalTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :cal_times do |t|
      t.date :datefull
      t.integer :day_number_in_week
      t.integer :day_number_in_month
      t.integer :calendar_week_number

      t.timestamps
    end
  end
end
