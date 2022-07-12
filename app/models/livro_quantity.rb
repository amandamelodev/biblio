class LivroQuantity < ApplicationRecord
  belongs_to :livro
  belongs_to :user, optional: true
end
