json.extract! user, :id, :nome, :email, :senha, :created_at, :updated_at
json.url user_url(user, format: :json)
