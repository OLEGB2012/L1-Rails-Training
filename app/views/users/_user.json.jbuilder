json.extract! user, :id, :login_name, :first_name, :last_name, :birthday, :created_at, :updated_at
json.url user_url(user, format: :json)
