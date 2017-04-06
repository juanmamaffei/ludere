class CreateClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :clubs do |t|
      t.string :nombre
      t.text :desc
      t.integer :lider
      t.boolean :publico
      t.boolean :cupoabierto
      t.string :portada

      t.timestamps
    end
  end
end
