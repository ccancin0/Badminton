json.extract! reviewer, :id, :created_at, :updated_at, :handle, :phone, :status, :years_active
json.url reviewer_url(reviewer, format: :json)