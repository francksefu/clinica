class Instrumento < ApplicationRecord
  has_many :avaliacao_instrumentos

  validates :pergunta_um, presence: true
  validates :pergunta_dois, presence: true
  validates :pergunta_tres, presence: true
  validates :pergunta_quatro, presence: true
  validates :pergunta_cinco, presence: true
  validates :titulo, presence: true
end
