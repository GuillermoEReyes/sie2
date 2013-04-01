class CreateGenerales < ActiveRecord::Migration
  def change
    create_table :generales do |t|
      t.string :lectivoActual
      t.string :idsistema
      t.string :noPlanOcci
      t.string :cobrazaOcci
      t.string :nombreArchivoOcci
      t.string :bimestreActual
      t.boolean :notasweb
      t.boolean :tieneBingo
      t.boolean :tienePapeleria
      t.boolean :boletaImpresa

      t.timestamps
    end
  end
end
