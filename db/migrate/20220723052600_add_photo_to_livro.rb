class AddPhotoToLivro < ActiveRecord::Migration[7.0]
  def change
    add_column :livros, :photo, :string
  end
end
