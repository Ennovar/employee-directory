json.extract! employee, :id, :name, :email, :slack, :wsu_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)