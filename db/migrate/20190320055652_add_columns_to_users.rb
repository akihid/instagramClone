class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :icon, :string
    add_column :users, :content, :text
    add_column :users, :gender, :boolean
    add_column :users, :age, :integer
  end
end
