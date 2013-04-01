class CreateFamilias < ActiveRecord::Migration
  def change
    create_table :familias do |t|
      t.string :codigo
      t.string :familia

      t.timestamps
    end
  end
end
