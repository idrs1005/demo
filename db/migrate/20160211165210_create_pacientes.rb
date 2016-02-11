class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.datetime :fecha_nacimiento
      t.string :usuario
      t.string :password
      t.string :identificacion
      t.string :sexo
      t.string :ocupacion

      t.timestamps null: false
    end
  end
end
