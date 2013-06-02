class CreateTypeUsers < ActiveRecord::Migration
  def change
    create_table :type_users do |t|
      t.string :nombre
      t.date :finicio
      t.string :correo
      t.string :clave
      t.string :rol_defecto
      t.integer :tur_id

      t.timestamps
    end
  end
end
