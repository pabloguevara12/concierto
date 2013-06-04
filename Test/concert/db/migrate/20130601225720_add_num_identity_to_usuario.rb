class AddNumIdentityToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :num_identity, :string
  end
end
