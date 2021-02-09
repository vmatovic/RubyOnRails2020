class CreateCalMonthSales < ActiveRecord::Migration[6.1]
  def change
    create_table :cal_month_sales do |t|
      t.date :calendar_month_desc
      t.integer :dollars

      t.timestamps
    end
  end
end
