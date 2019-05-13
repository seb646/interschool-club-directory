class ChangeColumnsInClubs < ActiveRecord::Migration[5.2]
  def change
    remove_column :clubs, :category_id
    rename_column :clubs, :years, :grades
  end
end
