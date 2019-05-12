class AddLogoToSchools < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :logo, :text
  end
end
