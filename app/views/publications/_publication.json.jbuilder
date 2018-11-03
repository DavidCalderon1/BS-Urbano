json.extract! publication, :id, :picture, :state_id, :user_id, :created_at, :updated_at
json.url publication_url(publication, format: :json)
