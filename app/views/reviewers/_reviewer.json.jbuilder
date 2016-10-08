json.extract! reviewer, :id, :handle, :phone, :status, :years_active, :created_at, :updated_at,
json.url reviewer_url(reviewer, format: :json)