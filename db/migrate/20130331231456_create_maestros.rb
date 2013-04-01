class CreateMaestros < ActiveRecord::Migration
  def change
    create_table :maestros do |t|
      t.string :login
      t.string :password
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end
end
