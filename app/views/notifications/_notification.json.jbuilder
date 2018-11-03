json.extract! notification, :id, :subject_id, :user_id, :seen, :created_at, :updated_at
json.url notification_url(notification, format: :json)
