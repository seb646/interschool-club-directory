class ChangeColumnsToTextInEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :rsvp, :text
    change_column :events, :location, :text
  end
end
