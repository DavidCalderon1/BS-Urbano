json.extract! user, :id, :name, :email, :suburb_id, :address, :phone, :picture, :latitude, :longitude, :state_id, :created_at, :updated_at
json.url user_url(user, format: :json)