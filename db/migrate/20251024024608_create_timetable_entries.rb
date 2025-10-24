class CreateTimetableEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :timetable_entries do |t|
      t.integer :class_id
      t.integer :period_id
      t.integer :subject_id
      t.integer :wday

      t.timestamps
    end
  end
end
