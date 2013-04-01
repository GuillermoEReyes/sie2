class CreateLectivos < ActiveRecord::Migration
  def change
    create_table :lectivos do |t|
      t.string :codigo
      t.string :slogan
      t.integer :valor1p
      t.integer :valor2p
      t.integer :valor3p
      t.integer :valor4p
      t.integer :valor_aprobado

      t.timestamps
    end
  end
end
