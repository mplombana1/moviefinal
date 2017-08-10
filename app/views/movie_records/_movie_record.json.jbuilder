json.extract! movie_record, :id, :title, :poster_url, :plot, :imbd_url, :wachted, :imdb_rating, :personal_rating, :user_id, :created_at, :updated_at
json.url movie_record_url(movie_record, format: :json)
