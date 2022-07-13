class ReservaLivro < ApplicationRecord
  belongs_to :user
  belongs_to :livro

  has_many :historico_user

end
