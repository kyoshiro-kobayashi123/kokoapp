class TimetableEntry < ApplicationRecord
  belongs_to :subject

  # 0:固定, 1:変更, 2:試験, 3:イベント, 4:最終コマ
  enum :lesson_type, {
    fixed: 0,
    changed_lesson: 1, # 変更された授業
    exam: 2,
    event: 3,
    final_lesson: 4    # 最終コマ（← last から名前変更）
  }
end
