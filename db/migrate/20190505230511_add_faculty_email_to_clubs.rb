class AddFacultyEmailToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :faculty_email, :string
  end
end
