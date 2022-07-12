class Livro < ApplicationRecord
  enum status: [:active, :inactive]
  has_many :livro_quantities
end
