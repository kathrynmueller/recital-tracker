class CreateUserRecitals < ActiveRecord::Migration[5.2]
  def change
    create_table :user_recitals do |t|
      t.integer :user_id
      t.integer :recital_id
      t.string :status

      t.timestamps
    end
  end
end
