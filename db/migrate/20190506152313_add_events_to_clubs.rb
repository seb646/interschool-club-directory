class AddEventsToClubs < ActiveRecord::Migration[5.2]
  def change
    add_reference :clubs, :events, foreign_key: true
  end
end
