class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  enum kind: [:leitor, :admin]
  enum status: [:active, :inactive]

  has_many :livros
  has_many :livro_quantities
end
