class AddBioToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :bio, :text
  end
end
