class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.references :club, foreign_key: true
      t.text :body
      t.integer :alcance

      t.timestamps
    end
  end
end
