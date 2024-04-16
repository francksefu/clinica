class AddEstadoToAvaliacaoInstrumentos < ActiveRecord::Migration[7.1]
  def change
    add_column :avaliacao_instrumentos, :estado, :string
  end
end
