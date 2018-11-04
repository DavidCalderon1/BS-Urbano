json.extract! tip, :id, :title, :detail, :picture, :tip_type, :created_at, :updated_at
json.url tip_url(tip, format: :json)
