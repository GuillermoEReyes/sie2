class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :codigo
      t.string :descripcion
      t.string :tipo
      t.string :codigo_siguiente_curso

      t.timestamps
    end
  end
end
