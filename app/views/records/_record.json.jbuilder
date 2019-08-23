json.extract! record, :id, :trackable, :owner, :recipient, :key, :parameters, :created_at, :updated_at
json.url record_url(record, format: :json)
