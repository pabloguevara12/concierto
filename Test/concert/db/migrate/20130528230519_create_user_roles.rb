class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.integer :tur_id
      t.integer :rol_id

      t.timestamps
    end
  end
end
