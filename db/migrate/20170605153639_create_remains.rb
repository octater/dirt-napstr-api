class CreateRemains < ActiveRecord::Migration[5.0]
  def change
    create_table :remains do |t|
      t.string :given_name
      t.string :sur_name
      t.string :entombment
      t.string :location
      t.string :comments
      t.date :dob
      t.date :dod
      t.string :relation_desc

      t.timestamps
    end
  end
end
