class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.date :date
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
