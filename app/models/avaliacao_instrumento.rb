class AvaliacaoInstrumento < ApplicationRecord
  belongs_to :avaliacao
  belongs_to :instrumento
  has_one :avaliado
end
