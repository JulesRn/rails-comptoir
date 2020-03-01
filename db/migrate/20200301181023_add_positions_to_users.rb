class AddPositionsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :position, :string
    add_column :users, :string, :string
  end
end
