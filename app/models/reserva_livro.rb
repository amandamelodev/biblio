class ReservaLivro < ApplicationRecord
  belongs_to :user
  belongs_to :livro

  has_one :historico_user
end
