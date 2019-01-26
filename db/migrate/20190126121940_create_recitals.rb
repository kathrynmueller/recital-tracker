class CreateRecitals < ActiveRecord::Migration[5.2]
  def change
    create_table :recitals do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.string :note

      t.timestamps
    end
  end
end
