class TimetablesController < ApplicationController
  def student
    @current_week = current_week
    @entries = TimetableEntry.includes(:subject).all
    @change_requests = week_change_requests
  end

  def teacher
    @current_week = current_week
    @entries = TimetableEntry.includes(:subject).all
    @change_requests = week_change_requests
  end

  private

  def current_week
    if params[:week].present?
      Date.parse(params[:week])
    else
      Date.today.beginning_of_week(:monday)
    end
  end

  def week_change_requests
    week_start = @current_week
    week_end   = @current_week + 6.days

    TimetableChangeRequest.includes(:subject)
                          .where(change_day: week_start..week_end)
  end
end
