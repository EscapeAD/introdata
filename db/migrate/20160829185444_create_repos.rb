class CreateRepos < ActiveRecord::Migration[5.0]
  def change
    create_table :repos do |t|
      t.string :name
      t.integer :user_id
      t.integer :contributor_id

      t.timestamps
    end
  end
end
