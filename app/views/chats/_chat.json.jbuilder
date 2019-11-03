json.extract! chat, :id, :message, :created_at, :updated_at
json.url chat_url(chat, format: :json)
