# == Schema Information
#
# Table name: enderecos
#
#  id         :integer          not null, primary key
#  bairro     :string(255)
#  cep        :string(255)
#  cidade     :string(255)
#  compl      :string(255)
#  numero     :string(255)
#  rua        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  usuario_id :integer
#

class Endereco < ActiveRecord::Base
  
  belongs_to :usuario

  attr_accessible :bairro, :cep, :cidade, :compl, :numero, :rua

  validates_presence_of  :bairro, :cep, :cidade, :compl, :numero, :rua

  validates_numericality_of :numero, :cep

end
