class Avaliacao < ApplicationRecord
  belongs_to :user

  validates :nome, presence: true
  validates :cpf, presence: true
  validates :email, presence: true
  validates :data_de_nascimento, presence: true
end
