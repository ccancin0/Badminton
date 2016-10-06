json.extract! review, :id, :title, :subtitle, :stars, :body, :created_at, :updated_at
json.url review_url(review, format: :json)