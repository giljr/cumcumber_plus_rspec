json.extract! todo, :id, :note, :done, :created_at, :updated_at
json.url todo_url(todo, format: :json)
