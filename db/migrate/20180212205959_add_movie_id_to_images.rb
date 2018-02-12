class AddMovieIdToImages < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :movie, foreign_key: true
  end
end
