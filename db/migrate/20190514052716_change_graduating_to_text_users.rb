class ChangeGraduatingToTextUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :graduating, :text
  end
end
