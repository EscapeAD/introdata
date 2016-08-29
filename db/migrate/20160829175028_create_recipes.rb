class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :ingredent_id
      t.text :how_to

      t.timestamps
    end
  end
end
