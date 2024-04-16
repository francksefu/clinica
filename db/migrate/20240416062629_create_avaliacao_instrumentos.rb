class CreateAvaliacaoInstrumentos < ActiveRecord::Migration[7.1]
  def change
    create_table :avaliacao_instrumentos do |t|
      t.references :avaliacao, null: false, foreign_key: true
      t.references :instrumento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
