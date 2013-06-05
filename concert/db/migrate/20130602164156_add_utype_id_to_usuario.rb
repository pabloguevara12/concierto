class AddUtypeIdToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :utype_id, :string
  end
end
