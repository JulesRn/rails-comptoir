class CreateUnlikes < ActiveRecord::Migration[6.0]
  def change
    create_table :unlikes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :unliked_user, null: false, foreign_key: {to_table: :users}, index: true

      t.timestamps
    end
  end
end
