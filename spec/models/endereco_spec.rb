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

require 'spec_helper'

describe Endereco do
  pending "add some examples to (or delete) #{__FILE__}"
end
