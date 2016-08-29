class CreateIngredents < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredents do |t|
      t.string :amount
      t.integer :food_id

      t.timestamps
    end
  end
end
