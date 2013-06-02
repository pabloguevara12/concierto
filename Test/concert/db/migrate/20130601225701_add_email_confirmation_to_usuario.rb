class AddEmailConfirmationToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :email_confirmation, :string
  end
end
