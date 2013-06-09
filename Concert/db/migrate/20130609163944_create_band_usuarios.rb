class CreateBandUsuarios < ActiveRecord::Migration
  def change
    create_table :band_usuarios do |t|
      t.integer :band_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
