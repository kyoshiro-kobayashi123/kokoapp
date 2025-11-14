class AddSubjectAndLessonTypeToTimetableChangeRequests < ActiveRecord::Migration[8.0]
  def change
    add_column :timetable_change_requests, :subject_id, :integer
    add_column :timetable_change_requests, :lesson_type, :integer
  end
end
