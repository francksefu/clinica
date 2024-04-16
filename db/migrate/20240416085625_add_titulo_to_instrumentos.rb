class AddTituloToInstrumentos < ActiveRecord::Migration[7.1]
  def change
    add_column :instrumentos, :titulo, :string
  end
end
