class CreateActorsMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :actors_movies do |t|
      t.integer :cast_id
      t.string :actor_id
    end
  end
end
