class CreateAvaliados < ActiveRecord::Migration[7.1]
  def change
    create_table :avaliados do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.date :data_de_nascimento

      t.timestamps
    end
  end
end
