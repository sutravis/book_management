json.extract! book_rented_infomation, :id, :rented_date, :due_date, :book_id, :user_id, :created_at, :updated_at
json.url book_rented_infomation_url(book_rented_infomation, format: :json)
