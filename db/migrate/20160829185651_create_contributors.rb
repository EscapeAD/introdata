class CreateContributors < ActiveRecord::Migration[5.0]
  def change
    create_table :contributors do |t|
      t.integer :user_id
      t.integer :repo_id

      t.timestamps
    end
  end
end
