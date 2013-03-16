class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :end_rua
      t.string :end_num
      t.string :end_comp
      t.string :end_cep
      t.string :end_bai
      t.string :end_cid
      t.string :celular
      t.string :email
      t.string :login
      t.string :senha

      t.timestamps
    end
  end
end
