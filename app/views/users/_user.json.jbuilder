json.extract! user, :id, :user_login, :user_nicename, :user_url, :user_status, :display_name, :created_at, :updated_at
json.url user_url(user, format: :json)
