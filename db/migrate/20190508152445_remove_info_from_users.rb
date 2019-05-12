class RemoveInfoFromUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :first_name, :text
    change_column :users, :last_name, :text
  end
end
