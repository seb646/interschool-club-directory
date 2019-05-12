class ChangeEventFieldDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :date, :event_date
  end
end
