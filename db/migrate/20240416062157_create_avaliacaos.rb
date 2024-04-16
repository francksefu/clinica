class CreateAvaliacaos < ActiveRecord::Migration[7.1]
  def change
    create_table :avaliacaos do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.date :data_de_nascimento
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
