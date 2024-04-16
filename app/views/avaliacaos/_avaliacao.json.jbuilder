json.extract! avaliacao, :id, :nome, :cpf, :email, :data_de_nascimento, :user_id, :created_at, :updated_at
json.url avaliacao_url(avaliacao, format: :json)
