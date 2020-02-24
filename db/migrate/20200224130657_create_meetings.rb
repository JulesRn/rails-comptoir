class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.references :current, null: false
      t.references :matched, null: false
      t.references :place, null: false, foreign_key: true
      t.string :date_time
      t.integer :cancelation_author
      t.integer :was_here

      t.timestamps
    end
  end
end
