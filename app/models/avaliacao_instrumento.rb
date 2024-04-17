class AvaliacaoInstrumento < ApplicationRecord
  belongs_to :avaliacao
  belongs_to :instrumento
  has_many :avaliados
end
