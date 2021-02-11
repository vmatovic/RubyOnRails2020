class AddUserToMicroposts < ActiveRecord::Migration[6.1]
  def change
    add_reference :microposts, :user, foreign_key: true
  end
end
