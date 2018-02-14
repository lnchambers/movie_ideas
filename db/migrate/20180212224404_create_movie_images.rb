class CreateMovieImages < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_images do |t|
      t.references :movie, foreign_key: true
      t.references :image, foreign_key: true
    end
  end
end
