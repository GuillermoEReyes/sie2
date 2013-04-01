class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :lectivo
      t.string :rne
      t.date :fechaSancion
      t.text :motivoSancion
      t.string :maestroSancion
      t.boolean :firmaSancion
      t.string :tipoDisciplina

      t.timestamps
    end
  end
end
