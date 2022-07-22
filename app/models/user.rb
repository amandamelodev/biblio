class User < ApplicationRecord
  validates :email, :telefone, :password, presence: true

  enum role: [:admin, :leitor]

  extend Devise::Models
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable #:omniauthable

  def after_password_reset
    self.clear_reset_password_token if not (self.reset_password_token.nil? and self.reset_password_sent_at.nil?)
  end

  def title
    nome
  end
  
end
