class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :nombre
      t.text :descripcion
      t.datetime :finaliza
      t.string :video
      t.string :pdf
      t.string :link1
      t.string :link2
      t.boolean :abrevencido
      t.boolean :evaluavencido
      t.integer :peso
      t.attachment :evaluacion

      t.timestamps
    end
  end
end
