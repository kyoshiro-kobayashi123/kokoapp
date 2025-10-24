class SessionsController < ApplicationController
  def new
  end

  def create
    # パスワードでユーザーを探す
    user = User.find_by(password: params[:password])

    if user
      session[:user_id] = user.id
      redirect_to timetables_teacher_path, notice: "ログインしました"
    else
      flash.now[:alert] = "パスワードが正しくありません"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "ログアウトしました"
  end
end
