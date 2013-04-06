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

class Usuario < ActiveRecord::Base
  attr_accessible :celular, :email, :end_bai, :end_cep, :end_cid, :end_comp, :end_num, :end_rua, :login, :nome, :password, :password_confirmation, :termos
  before_save :create_remember_token

  #Verificar necessidade de implementar campos :message para a validacao

  #Validacao de confirmacao
  #validates :password, confirmation: true #ja esta implementado pelo has_secure_password

  #Validacao de presenca
  validates :celular, :email, :end_bai, :end_cep, :end_comp, :end_num, :end_rua, :nome, :password, :password_confirmation, presence: true

  #Validacao de formato
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}

  #Validacao de comprimento
  #validates :login, length: { :in => 6..20 }
  validates :password, length: { :in => 6..20 }

  #Validacao numerica
  validates :celular, numericality: true
  validates :end_num, numericality: true
  validates :end_cep, numericality: true

  #Validacao de unicidade
  #validates :login, uniqueness: true

  validates :termos, acceptance: true

  has_secure_password



  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
