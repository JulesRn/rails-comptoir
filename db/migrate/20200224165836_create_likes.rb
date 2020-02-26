class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :liked_user, null: false, foreign_key: {to_table: :users}, index: true

      t.timestamps
    end
  end
end
