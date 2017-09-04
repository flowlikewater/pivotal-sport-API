class AddDefaultValueToShowAttribute < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :tier, :integer, default: 1
  end
end
