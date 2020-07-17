class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :video_url
      t.string :movie_title
      t.text :description

      t.timestamps
    end
  end
end
