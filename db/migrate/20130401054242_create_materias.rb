class CreateMaterias < ActiveRecord::Migration
  def change
    create_table :materias do |t|
      t.string :codigo
      t.string :descripcion
      t.string :nivel
      t.string :orden
      t.string :materiaTipo

      t.timestamps
    end
  end
end
