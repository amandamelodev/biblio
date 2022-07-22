class CreateDisponibilidadeLivros < ActiveRecord::Migration[7.0]
  def change
    create_table :disponibilidade_livros do |t|
      t.integer :quantidade
      t.references :livro, foreign_key: true

      t.timestamps
    end
  end
end
