json.extract! job, :id, :user_id, :origin, :destination, :cost, :created_at, :updated_at
json.url job_url(job, format: :json)
