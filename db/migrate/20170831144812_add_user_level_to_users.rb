class AddUserLevelToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :tier, :integer
    add_column :users, :description, :string
  end
end
