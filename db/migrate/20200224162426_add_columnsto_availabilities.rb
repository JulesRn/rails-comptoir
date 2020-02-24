class AddColumnstoAvailabilities < ActiveRecord::Migration[6.0]
  def change
    add_column :availabilities, :afterwork, :boolean
    add_column :availabilities, :diner_time, :boolean
    add_column :availabilities, :days, :string
  end
end
