class CreateSports < ActiveRecord::Migration[5.1]
  def change
    create_table :sports do |t|
      t.string :name
      t.string :description
      t.string :rules
      t.string :imageUrl

      t.timestamps
    end
  end
end
