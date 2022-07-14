class CreateLivros < ActiveRecord::Migration[5.2]
  def change
    create_table :livros do |t|
      t.string :titulo, null: false
      t.string :autores, null: false
      t.string :editora
      t.string :descricao, null: false
      t.string :banner

      t.timestamps
    end
  end
end
