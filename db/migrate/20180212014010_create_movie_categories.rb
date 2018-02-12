class CreateMovieCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_categories do |t|
      t.references :movie, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end