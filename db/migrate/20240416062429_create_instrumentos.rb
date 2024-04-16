class CreateInstrumentos < ActiveRecord::Migration[7.1]
  def change
    create_table :instrumentos do |t|
      t.text :pergunta_um
      t.text :pergunta_dois
      t.text :pergunta_tres
      t.text :pergunta_quatro
      t.text :pergunta_cinco

      t.timestamps
    end
  end
end
