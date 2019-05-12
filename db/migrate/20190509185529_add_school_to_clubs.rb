class AddSchoolToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :school_id, :integer
  end
end
