class CreateBingos < ActiveRecord::Migration
  def change
    create_table :bingos do |t|
      t.string :lectivo
      t.string :rne
      t.string :recibo
      t.date :fechapago
      t.decimal :montopago
      t.string :posteadopor

      t.timestamps
    end
  end
end
