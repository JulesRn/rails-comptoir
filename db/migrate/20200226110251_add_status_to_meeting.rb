class AddStatusToMeeting < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :status, :string, default: "occured"
  end
end
