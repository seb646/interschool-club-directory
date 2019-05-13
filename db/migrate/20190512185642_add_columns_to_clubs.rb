class AddColumnsToClubs < ActiveRecord::Migration[5.2]
  def change
    add_reference :clubs, :category, foreign_key: true
    add_column :clubs, :years, :text
    add_column :clubs, :website, :text
  end
end
