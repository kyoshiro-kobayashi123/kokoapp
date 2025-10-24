class TimetablesController < ApplicationController
  def student
    # 今週の日付（例：月曜日を基準に）
    @current_week = Date.today.beginning_of_week(:monday)

    # timetable_entriesを全部取得（ここは後で class_id で絞れる）
    @entries = TimetableEntry.includes(:subject).all
  end

  def teacher
    @current_week = Date.today.beginning_of_week(:monday)
    @entries = TimetableEntry.includes(:subject).all
  end
end
