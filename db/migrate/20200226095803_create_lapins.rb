class CreateLapins < ActiveRecord::Migration[6.0]
  def change
    create_table :lapins do |t|
      t.references :meeting, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :lapin_time

      t.timestamps
    end
  end
end
