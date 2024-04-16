class AddAvaliacaoInstrumentoToAvaliados < ActiveRecord::Migration[7.1]
  def change
    add_reference :avaliados, :avaliacao_instrumento, null: false, foreign_key: true
  end
end
