class TimetablesController < ApplicationController
  def student
    @current_week = current_week
    @season_class_id = season_class(@current_week)
    @entries = TimetableEntry.includes(:subject).where(class_id: @season_class_id)
    @change_requests = week_change_requests(@current_week)
  end

  def teacher
    @current_week = current_week
    @season_class_id = season_class(@current_week)
    @entries = TimetableEntry.includes(:subject).where(class_id: @season_class_id)
    @change_requests = week_change_requests(@current_week)
  end

  private

  # クリックされた「週」パラメータを元に対象の週を決定
  def current_week
    if params[:week].present?
      Date.parse(params[:week]).beginning_of_week(:monday)
    else
      Date.today.beginning_of_week(:monday)
    end
  end

  # 📌 前期・後期を判定して class_id を返す
  #   前期：4〜8月 → class_id: 1
  #   後期：9〜3月 → class_id: 2
  def season_class(date)
    month = date.month

    if (4..8).include?(month)
      1  # 前期
    else
      2  # 後期
    end
  end

  # 今週/先週/翌週の変更リクエスト取得
  def week_change_requests(week_start)
    week_end = week_start + 6.days

    TimetableChangeRequest
      .includes(:subject)
      .where(change_day: week_start..week_end)
  end
end
