class User < ApplicationRecord
  validates :nome, :email, presence: true

  has_many :livros
  has_many :livro_quantities

  extend Devise::Models
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable #:omniauthable

  enum kind: [:leitor, :bibliotecario]
  enum status: [:active, :inactive]

  def after_password_reset
    self.clear_reset_password_token if not (self.reset_password_token.nil? and self.reset_password_sent_at.nil?)
  end

  def title
    nome
  end
  
end
