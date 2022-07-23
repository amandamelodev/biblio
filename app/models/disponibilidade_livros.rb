class DisponibilidadeLivros < ApplicationRecord
  belongs_to :livro

  def title
    quantidade
  end

  #enum quantidade: [:disponivel, :indisponivel]
  #validates :quantidade, presence: true, numericality: { greater_than_or_equal_to: 0}
end
