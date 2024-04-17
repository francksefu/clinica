class RemovePontuacaoFromAvaliacao < ActiveRecord::Migration[7.1]
  def change
    remove_column :avaliacaos, :pontuacao, :integer
    add_column :avaliacao_instrumentos, :pontuacao, :integer
  end
end
