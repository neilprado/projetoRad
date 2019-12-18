class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :nome
      t.string :conteudo
      t.date :data
      t.integer :idFilme

      t.timestamps
    end
  end
end
