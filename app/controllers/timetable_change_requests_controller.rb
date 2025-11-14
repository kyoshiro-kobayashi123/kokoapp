class TimetableChangeRequestsController < ApplicationController
    def edit
      # クエリパラメータから「どの週・どのコマ・どのクラスか」を決める
      @date      = Date.parse(params[:date])
      @period    = params[:period].to_i
      @class_id  = params[:class_id] || "1"
  
      # すでに変更があるならそれを、なければ新規オブジェクトを用意
      @change = TimetableChangeRequest.find_or_initialize_by(
        change_day:   @date,
        change_koma:  @period,
        change_class: @class_id
      )
  
      # hidden_field 用に、値をセットしておく
      @change.change_day   ||= @date
      @change.change_koma  ||= @period
      @change.change_class ||= @class_id
  
      @subjects = Subject.all
    end
  
    def update
      date     = Date.parse(change_request_params[:change_day])
      period   = change_request_params[:change_koma].to_i
      class_id = change_request_params[:change_class]
  
      @change = TimetableChangeRequest.find_or_initialize_by(
        change_day:   date,
        change_koma:  period,
        change_class: class_id
      )
  
      @change.assign_attributes(change_request_params.except(:change_day, :change_koma, :change_class))
  
      if @change.save
        redirect_to timetables_teacher_path(week: date.beginning_of_week(:monday)), notice: "コマを更新しました"
      else
        @date     = date
        @period   = period
        @class_id = class_id
        @subjects = Subject.all
        flash.now[:alert] = "更新に失敗しました"
        render :edit, status: :unprocessable_entity
      end
    end
  
    private
  
    def change_request_params
      params.require(:timetable_change_request).permit(
        :change_day,
        :change_koma,
        :change_class,
        :subject_id,
        :lesson_type
      )
    end
  end
  