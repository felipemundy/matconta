# == Schema Information
#
# Table name: usuarios
#
#  id         :integer          not null, primary key
#  nome       :string(255)
#  end_rua    :string(255)
#  end_num    :string(255)
#  end_comp   :string(255)
#  end_cep    :string(255)
#  end_bai    :string(255)
#  end_cid    :string(255)
#  celular    :string(255)
#  email      :string(255)
#  login      :string(255)
#  senha      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Usuario do
  pending "add some examples to (or delete) #{__FILE__}"
end
