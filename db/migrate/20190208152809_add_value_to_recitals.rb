class AddValueToRecitals < ActiveRecord::Migration[5.2]
  def change
    add_column :recitals, :semester_id, :integer
  end
end
