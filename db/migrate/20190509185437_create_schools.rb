class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.text :name
      t.references :user
      t.text :description
      t.text :website
      t.text :address
      t.text :phone

      t.timestamps
    end
  end
end
