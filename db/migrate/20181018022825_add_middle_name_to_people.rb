class AddMiddleNameToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :middle_name, :string
  end
end
