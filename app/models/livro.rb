class Livro < ApplicationRecord
  enum status: [:disponivel, :indisponivel]
  has_many :livro_quantities

  def title
    titulo
  end

end
