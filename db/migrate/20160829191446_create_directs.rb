class CreateDirects < ActiveRecord::Migration[5.0]
  def change
    create_table :directs do |t|
      t.integer :film_id
      t.integer :director_id

      t.timestamps
    end
  end
end
