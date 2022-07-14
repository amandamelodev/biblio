class LivroDisponibilidade < ApplicationRecord
  belongs_to :livro
  
  def title
    quantidade
  end
end
