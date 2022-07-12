class CreateHistoricoUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :historico_users do |t|
      t.references :reserva_livro, foreign_key: true

      t.timestamps
    end
  end
end
