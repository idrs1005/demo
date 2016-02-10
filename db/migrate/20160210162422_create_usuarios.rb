class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.datetime :fecha_nacimiento

      t.timestamps null: false
    end
  end
end
