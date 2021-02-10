class CreateSuppDemographics < ActiveRecord::Migration[6.1]
  def change
    create_table :supp_demographics do |t|
      t.string :education
      t.integer :household_size
      t.integer :years_residence
      t.string :comment

      t.timestamps
    end
  end
end
