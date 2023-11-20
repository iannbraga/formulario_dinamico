class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.decimal :preco
      t.boolean :ativo

      t.timestamps
    end
  end
end
