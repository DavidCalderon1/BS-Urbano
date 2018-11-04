json.extract! state, :id, :name, :state_type, :created_at, :updated_at
json.url state_url(state, format: :json)
