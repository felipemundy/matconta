class RemoveColumnsFromUsuarios < ActiveRecord::Migration
  def up
  	remove_column :usuarios, :end_bai, :end_cep, :end_cid, :end_comp, :end_num, :end_rua
  end

  def down
  	add_column :usuarios, :end_bai, :end_cep, :end_cid, :end_comp, :end_num, :end_rua
  end
end
