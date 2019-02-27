class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :station, :string, null: false
    add_column :users, :preparation_time, :integer
  end
end
