class RemoveColumnFromAvailabilities < ActiveRecord::Migration[6.0]
  def change
    remove_column :availabilities, :start_time
  end
end
