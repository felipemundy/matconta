class RemoveSenhaFromUsuarios < ActiveRecord::Migration
  def up
    remove_column :usuarios, :senha
  end

  def down
    add_column :usuarios, :senha, :string
  end
end
