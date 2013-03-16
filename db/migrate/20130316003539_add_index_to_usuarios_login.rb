class AddIndexToUsuariosLogin < ActiveRecord::Migration
  def change
  	add_index :usuarios, :login, unique: true
  end
end
