class CreateTimetableChangeRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :timetable_change_requests do |t|
      t.date :change_day
      t.integer :change_koma
      t.string :change_class

      t.timestamps
    end
  end
end
