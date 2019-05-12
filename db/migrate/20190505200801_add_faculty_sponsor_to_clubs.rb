class AddFacultySponsorToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :faculty, :string
  end
end
