json.extract! company, :id, :name, :activity_id, :contact, :number, :email, :address, :web, :status_id, :member_id, :event_id, :allowed, :note, :created_at, :updated_at
json.url company_url(company, format: :json)
