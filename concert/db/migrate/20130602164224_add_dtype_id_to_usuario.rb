class AddDtypeIdToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :dtype_id, :string
  end
end
