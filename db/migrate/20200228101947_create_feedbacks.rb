class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :meeting, null: false, foreign_key: true
      t.boolean :present
      t.boolean :continue
      t.text :content

      t.timestamps
    end
  end
end
