class AddPontuacaoToAvaliacaos < ActiveRecord::Migration[7.1]
  def change
    add_column :avaliacaos, :pontuacao, :integer
  end
end
