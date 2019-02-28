class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|

      t.string :name
      t.datetime :date, index: true
      t.string :place
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
