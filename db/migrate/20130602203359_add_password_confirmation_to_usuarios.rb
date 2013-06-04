class AddPasswordConfirmationToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :password_confirmation, :string
  end
end
