class AddDocIdentityToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :doc_identity, :string
  end
end
