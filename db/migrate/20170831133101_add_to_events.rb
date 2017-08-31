class AddToEvents < ActiveRecord::Migration[5.1]
  def change

    add_reference :events, :sport, index: true
    add_reference :events, :district, index: true
    add_reference :events, :user, index: true
    add_column :events, :level, :string
    add_column :events, :intensity, :string
    add_column :events, :terrain, :string
    add_column :events, :price, :integer
    add_column :events, :imageUpload, :string
    add_column :events, :date, :date
    add_column :events, :time, :time
    add_column :events, :address, :string

  end
end
