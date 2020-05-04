json.extract! job, :id, :job_name, :job_type_id, :salary, :explanation, :created_at, :updated_at
json.url job_url(job, format: :json)
