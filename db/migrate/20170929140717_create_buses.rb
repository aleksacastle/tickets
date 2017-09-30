class CreateBuses < ActiveRecord::Migration[5.1]
  def change
    create_table :buses do |t|
      t.integer :seats
      t.string :city_d
      t.date :date_d
      t.string :city_a
      t.date :date_a

      t.timestamps
    end
  end
end
