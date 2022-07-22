class Livro < ApplicationRecord
  validates :titulo, presence: true
  has_one :disponibilidade_livros

  def title
    titulo
  end
end
