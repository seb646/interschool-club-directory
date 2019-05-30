class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.references :user
      t.references :club
      t.boolean :admin
      t.boolean :faculty_advisor
      t.boolean :student_leader
      t.boolean :member

      t.timestamps
    end
  end
end
