json.extract! student, :id, :name, :last_name, :maiden_name, :email, :phone, :mobile_phone, :city, :state, :zip_code, :street, :external_number, :internal_number, :created_at, :updated_at
json.url student_url(student, format: :json)
