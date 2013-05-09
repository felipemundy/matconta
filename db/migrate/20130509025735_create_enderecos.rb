class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :compl
      t.string :numero
      t.string :rua

      t.timestamps
    end
  end
end
