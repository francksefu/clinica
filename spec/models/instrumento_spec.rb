require 'rails_helper'
RSpec.describe Instrumento, type: :model do
  subject { Instrumento.new(
    titulo: 'Bene',
    pergunta_um: 'Fale sobre você',
    pergunta_dois: 'Como você preenche agora',
    pergunta_tres: 'Como você classifica seu sucesso mais recente em uma escala de 1 a 4?',
    pergunta_quatro: 'Classifique seu sofrimento em uma escala de 1 a 4',
    pergunta_cinco: 'Numa escala de 1 a 4, me diga se você gostou da sua vida'
  ) }
  before { subject.save }

  it 'titulo should be present' do
    subject.titulo = nil
    expect(subject).to_not be_valid
  end

  it 'pergunta um should be present' do
    subject.pergunta_um = nil
    expect(subject).to_not be_valid
  end

  it 'pergunta dois should be present' do
    subject.pergunta_dois = nil
    expect(subject).to_not be_valid
  end

  it 'pergunta tres should be present' do
    subject.pergunta_tres = nil
    expect(subject).to_not be_valid
  end

  it 'pergunta quatro de nascimento should be present' do
    subject.pergunta_quatro = nil
    expect(subject).to_not be_valid
  end

  it 'pergunta cinco de nascimento should be present' do
    subject.pergunta_cinco = nil
    expect(subject).to_not be_valid
  end
end