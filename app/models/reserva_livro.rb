class ReservaLivro < ApplicationRecord
  belongs_to :user
  belongs_to :livro

end
