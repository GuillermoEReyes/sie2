class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :IdFamilia
      t.string :EscuelaProviene
      t.string :rne
      t.string :nombres
      t.string :apellido1
      t.string :apellido2
      t.date :fechaNacimiento
      t.string :genero
      t.string :mano
      t.string :lugarNacimiento
      t.string :departamento
      t.string :municipio
      t.string :nacionalidad
      t.string :pais
      t.string :religion
      t.string :colonia
      t.string :avenida
      t.string :calle
      t.string :casa
      t.boolean :esRepitente
      t.boolean :esBecado
      t.boolean :esHijoMaestro
      t.boolean :retirado

      t.timestamps
    end
  end
end
