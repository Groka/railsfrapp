json.extract! report, :id, :company_id, :event_id, :member_id, :title, :content, :created_at, :updated_at
json.url report_url(report, format: :json)
