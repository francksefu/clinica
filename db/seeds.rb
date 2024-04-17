# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(email: 'psy@cg.com', password: '123456')

Instrumento.create(
  titulo: 'Sociais',
  pergunta_um: 'Como você se sente em grandes grupos sociais?',
  pergunta_dois: 'Quão à vontade você se sente ao ser criticado(a)? ',
  pergunta_tres: 'Em que medida você se sente capaz de lidar com o estresse diário?',
  pergunta_quatro: 'Quão à vontade você se sente com mudanças? ',
  pergunta_cinco: 'Como você se sente ao tomar decisões importantes?',
)

Instrumento.create(
  titulo: 'profissionais',
  pergunta_um: 'Quão confiante você se sente em suas habilidades profissionais?',
  pergunta_dois: 'Quão à vontade você se sente ao falar em público?  ',
  pergunta_tres: 'Como você reage a situações imprevistas?',
  pergunta_quatro: 'Quão à vontade você se sente em mostrar suas emoções? ',
  pergunta_cinco: 'Como você se sente ao tomar decisões importantes?',
)
