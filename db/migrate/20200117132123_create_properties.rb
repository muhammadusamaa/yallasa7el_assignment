class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :destination
      t.string :owner_name
      t.integer :mobile_number
      t.integer :url
      t.integer :number_of_rooms
      t.integer :number_of_beds
      t.string :accomodates

      t.timestamps
    end
  end
end
