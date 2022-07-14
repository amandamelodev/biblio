class ReservaLivro < ApplicationRecord
  belongs_to :user
  belongs_to :livro
  validates :checkin, :checkout, presence: true

end
