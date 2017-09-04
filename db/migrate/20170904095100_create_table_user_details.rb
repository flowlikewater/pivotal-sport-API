class CreateTableUserDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.string :firstName
      t.string :lastName
      t.string :nickname
      t.string :image
      t.string :tier
      t.string :description
      t.timestamps
    end
    add_reference :users, :detail, index: true
  end
end

# add_reference :details, :user, index: true
