class Livro < ApplicationRecord
  enum status: [:disponivel, :indisponivel]
  validates :titulo, presence: true

  def title
    titulo
  end

end
