class CreateLivroQuantities < ActiveRecord::Migration[5.2]
  def change
    create_table :livro_quantities do |t|
      t.references :livro, foreign_key: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
