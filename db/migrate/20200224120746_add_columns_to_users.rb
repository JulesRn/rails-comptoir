class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :description, :text
    add_column :users, :age, :integer
    add_column :users, :height, :integer
    add_column :users, :smoker, :boolean
    add_column :users, :drinker, :boolean
    add_column :users, :sex, :string
    add_column :users, :sexual_orientation, :string
    add_column :users, :photo, :string
    add_column :users, :sport, :string
    add_column :users, :job, :string
    add_column :users, :intention, :string
  end
end
