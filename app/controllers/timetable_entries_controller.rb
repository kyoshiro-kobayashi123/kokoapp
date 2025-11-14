class TimetableEntriesController < ApplicationController
    before_action :set_entry, only: [:edit, :update]
  
    def edit
      @subjects = Subject.all
    end
  
    def update
      if @entry.update(timetable_entry_params)
        redirect_to timetables_teacher_path, notice: "コマを更新しました"
      else
        flash.now[:alert] = "更新に失敗しました"
        @subjects = Subject.all
        render :edit, status: :unprocessable_entity
      end
    end
  
    private
  
    def set_entry
      @entry = TimetableEntry.find(params[:id])
    end
  
    def timetable_entry_params
      params.require(:timetable_entry).permit(:subject_id, :lesson_type)
    end
  end
  