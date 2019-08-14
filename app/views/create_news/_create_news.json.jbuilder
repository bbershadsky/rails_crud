json.extract! create_news, :id, :bill_to, :contract_num, :description, :created_at, :updated_at
json.url create_news_url(create_news, format: :json)
