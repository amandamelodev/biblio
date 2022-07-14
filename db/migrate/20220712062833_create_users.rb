class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nome, null: false
      t.string :telefone, null: false
      t.timestamps
    end
  end
end
