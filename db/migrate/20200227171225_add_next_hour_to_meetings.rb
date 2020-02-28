class AddNextHourToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :start_hour, :datetime
  end
end
