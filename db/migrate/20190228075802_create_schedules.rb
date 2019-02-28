class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|

      t.string :name
      t.datetime :date, index: true
      t.string :place
      t.timestamps
    end
  end
end
