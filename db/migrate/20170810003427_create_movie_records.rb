class CreateMovieRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_records do |t|
      t.string :title
      t.string :poster_url
      t.string :plot
      t.string :imbd_url
      t.boolean :watched
      t.string :imdb_rating
      t.integer :personal_rating
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
