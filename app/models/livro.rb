class Livro < ApplicationRecord
  validates :titulo, presence: true
  has_one :disponibilidade_livros

  mount_uploader :photo, PhotoUploader
  
  def title
    titulo
  end
end
