class Admin < ActiveRecord::Base
  attr_accessible :login, :password, :password_confirmation
  before_save :create_remember_token

  validates :login, :password, :password_confirmation

  validates :password, length: [:in => 6..20]

  has_secure_password

private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
