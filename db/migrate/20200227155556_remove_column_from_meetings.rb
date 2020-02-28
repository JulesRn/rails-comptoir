class RemoveColumnFromMeetings < ActiveRecord::Migration[6.0]
  def change
    remove_column :meetings, :date_time
  end
end
