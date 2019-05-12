class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.string :days
      t.string :time
      t.string :location
      t.string :contact
      t.string :image
      t.string :timestamp

      t.timestamps
    end
  end
end
