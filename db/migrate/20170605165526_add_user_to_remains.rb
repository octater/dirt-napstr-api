class AddUserToRemains < ActiveRecord::Migration[5.0]
  def change
    add_reference :remains, :user, foreign_key: true
  end
end
