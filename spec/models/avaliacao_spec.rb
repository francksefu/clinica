require 'rails_helper'
RSpec.describe Avaliacao, type: :model do
  subject { Avaliacao.new(user: User.first, nome: 'Ricardo', cpf: 'ricardo1234', email: 'ricardo@gmail.com', data_de_nascimento: '2000/01/12') }
  before { subject.save }

  it 'nome should be present' do
    subject.nome = nil
    expect(subject).to_not be_valid
  end

  it 'cpf should be present' do
    subject.cpf = nil
    expect(subject).to_not be_valid
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'data de nascimento should be present' do
    subject.data_de_nascimento = nil
    expect(subject).to_not be_valid
  end
end