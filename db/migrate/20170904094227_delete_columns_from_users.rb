class DeleteColumnsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :tier
    remove_column :users, :description
  end
end
