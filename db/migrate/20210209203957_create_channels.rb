class CreateChannels < ActiveRecord::Migration[6.1]
  def change
    create_table :channels do |t|
      t.string :desc
      t.string :classs
      t.string :total

      t.timestamps
    end
  end
end
