json.extract! member, :id, :name, :surname, :password, :email, :member_type_id, :created_at, :updated_at
json.url member_url(member, format: :json)
