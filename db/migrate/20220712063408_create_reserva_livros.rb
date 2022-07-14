class CreateReservaLivros < ActiveRecord::Migration[5.2]
  def change
    create_table :reserva_livros do |t|
      t.references :user, foreign_key: true
      t.references :livro, foreign_key: true
      t.integer :status
      t.date :checkin
      t.date :checkout
    
      t.timestamps
    end
  end
end
