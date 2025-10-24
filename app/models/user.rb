class User < ApplicationRecord
    # 教員用ログインを想定
    has_secure_password  # bcryptを使うなら
    has_many :timetable_entries
  end
  