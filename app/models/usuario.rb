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

class Usuario < ActiveRecord::Base
  attr_accessible :celular, :email, :login, :nome, :password, :password_confirmation, :termos
  before_save :create_remember_token

  has_many :enderecos

  #Verificar necessidade de implementar campos :message para a validacao

  #Validacao de confirmacao
  #validates :password, confirmation: true #ja esta implementado pelo has_secure_password

  #Validacao de presenca
  validates_presence_of :celular, :email, :nome, :password, :password_confirmation

  #Validacao de formato
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}

  #Validacao de comprimento
  #validates :login, length: { :in => 6..20 }
  validates :password, length: { :in => 6..20 }

  #Validacao numerica
  validates :celular, numericality: true

  #Validacao de unicidade
  validates :login, uniqueness: true

  validates :termos, acceptance: true

  has_secure_password

  #Implementar validacao de formato de CEP

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
