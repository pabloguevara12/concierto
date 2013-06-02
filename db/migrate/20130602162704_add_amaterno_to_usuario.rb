class AddAmaternoToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :amaterno, :string
  end
end
