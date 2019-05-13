class ChangeDateToWhenInEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :event_date, :when
  end
end
