class RemoveDobFromRemains < ActiveRecord::Migration[5.0]
  def change
    remove_column :remains, :dob, :date
  end
end
