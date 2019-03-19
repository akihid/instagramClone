class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :content
      t.boolean :gender
      t.integer :age
      t.string :picture
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
