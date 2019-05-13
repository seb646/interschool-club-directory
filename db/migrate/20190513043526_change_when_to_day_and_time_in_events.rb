class ChangeWhenToDayAndTimeInEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :when, :date_and_time
  end
end