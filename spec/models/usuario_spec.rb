# == Schema Information
#
# Table name: usuarios
#
#  id              :integer          not null, primary key
#  nome            :string(255)
#  celular         :string(255)
#  email           :string(255)
#  login           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  password        :string(255)
#  remember_token  :string(255)
#

require 'spec_helper'

describe Usuario do
  pending "add some examples to (or delete) #{__FILE__}"
end
