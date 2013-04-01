class CreateLectivos < ActiveRecord::Migration
  def change
    create_table :lectivos do |t|
      t.string :codigo
      t.string :slogan
      t.int :valor1p
      t.int :valor2p
      t.int :valor3p
      t.int :valor4p
      t.int :valor_aprobado

      t.timestamps
    end
  end
end
