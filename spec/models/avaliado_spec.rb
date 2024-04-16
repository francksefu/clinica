require 'rails_helper'
RSpec.describe Avaliado, type: :model do
  subject { Avaliado.new(nome: 'Antonio', cpf: 'antonio1234', email: 'antonio@gmail.com', data_de_nascimento: '2000/01/12') }
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