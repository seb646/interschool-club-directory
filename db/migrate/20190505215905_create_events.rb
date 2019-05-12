class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :club, foreign_key: true
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.date :date
      t.string :location
      t.string :rsvp

      t.timestamps
    end
  end
end
