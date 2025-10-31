class SessionsController < ApplicationController
  def new
  end

  def create
    # 登録済みのUserは1人だけ想定（複数ならfind_by条件を追加）
    user = User.first

    # bcryptの認証を使う！
    if user&.authenticate(params[:password])
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
