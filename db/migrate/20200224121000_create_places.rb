class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :opening_time
      t.string :photo
      t.string :category
      t.string :url

      t.timestamps
    end
  end
end
