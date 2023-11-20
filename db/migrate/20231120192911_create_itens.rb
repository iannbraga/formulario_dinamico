class CreateItens < ActiveRecord::Migration[7.0]
  def change
    create_table :itens do |t|
      t.references :produto, null: false, foreign_key: true
      t.decimal :preco_unitario
      t.integer :quantidade

      t.timestamps
    end
  end
end
