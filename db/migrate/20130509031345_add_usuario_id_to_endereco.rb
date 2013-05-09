class AddUsuarioIdToEndereco < ActiveRecord::Migration
  def self.up
  	add_column :enderecos, :usuario_id, :integer
  end

  def self.down
  	remove_column :enderecos, :usuario_id
  end
end
