class CreateLivros < ActiveRecord::Migration[5.2]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :autores
      t.string :editora
      t.string :descricao
      t.string :banner

      t.timestamps
    end
  end
end
