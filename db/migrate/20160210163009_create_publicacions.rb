class CreatePublicacions < ActiveRecord::Migration
  def change
    create_table :publicacions do |t|
      t.string :titulo
      t.text :contenido

      t.timestamps null: false
    end
  end
end
