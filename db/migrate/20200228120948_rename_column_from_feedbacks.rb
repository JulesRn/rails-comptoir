class RenameColumnFromFeedbacks < ActiveRecord::Migration[6.0]
  def change
    rename_column :feedbacks, :present, :was_present
  end
end
