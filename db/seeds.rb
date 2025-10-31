# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# ===== 教科データ =====
Subject.create!(subject_name: "グループマネジメントⅡ", color: "white") #1
Subject.create!(subject_name: "WebデザインⅢ", color: "white") #2
Subject.create!(subject_name: "JavaScriptⅡ", color: "white") #3
Subject.create!(subject_name: "国家試験対策Ⅲ", color: "white") #4
Subject.create!(subject_name: "総合実践Ⅲ", color: "white") #5
Subject.create!(subject_name: "PythonⅠ", color: "white") #6
Subject.create!(subject_name: "RailsⅠ・AndroidⅠ", color: "white") #7
Subject.create!(subject_name: "RubyⅠ・JavaⅠ", color: "white") #8
Subject.create!(subject_name: "キャリア演習Ⅱ", color: "white") #9
Subject.create!(subject_name: "企業講演会Ⅱ", color: "white") #10
Subject.create!(subject_name: "総合体育Ⅲ", color: "white") #11
Subject.create!(subject_name: "式典出席", color: "white") #12
Subject.create!(subject_name: "実践ボランティアⅡ", color: "white") #13
Subject.create!(subject_name: "企業体験実習Ⅱ", color: "white") #14
Subject.create!(subject_name: "制作演習Ⅱ", color: "white") #15
Subject.create!(subject_name: "メディア制作Ⅰ", color: "white") #16
Subject.create!(subject_name: "JSPⅠ", color: "white") #17
Subject.create!(subject_name: "WebデザインⅣ", color: "white") #18
Subject.create!(subject_name: "国家試験対策Ⅳ", color: "white") #19
Subject.create!(subject_name: "プレゼンテーションⅠ", color: "white") #20
Subject.create!(subject_name: "卒業研究Ⅰ", color: "white") #21
Subject.create!(subject_name: "総合実践Ⅳ", color: "white") #22
Subject.create!(subject_name: "RubyⅡ・JavaⅡ", color: "white") #23
Subject.create!(subject_name: "RailsⅡ・AndroidⅡ", color: "white") #24
Subject.create!(subject_name: "キャリア演習Ⅱ", color: "white") #25
Subject.create!(subject_name: "企業講演会Ⅱ", color: "white") #26
Subject.create!(subject_name: "企画マネジメントⅡ", color: "white") #27
Subject.create!(subject_name: "ボランティア活動Ⅱ", color: "white") #28

# ===== 二年生前期（Rubyコース） =====
TimetableEntry.create!(class_id: 1, period_id: 1, subject_id: 8, wday: 1)  # 月曜1限 RubyⅠ・JavaⅠ
TimetableEntry.create!(class_id: 1, period_id: 2, subject_id: 8, wday: 1)
TimetableEntry.create!(class_id: 1, period_id: 3, subject_id: 6, wday: 1)
TimetableEntry.create!(class_id: 1, period_id: 1, subject_id: 3, wday: 2)  # 火曜
TimetableEntry.create!(class_id: 1, period_id: 2, subject_id: 3, wday: 2)
TimetableEntry.create!(class_id: 1, period_id: 3, subject_id: 4, wday: 2)
TimetableEntry.create!(class_id: 1, period_id: 1, subject_id: 5, wday: 3)  # 水曜
TimetableEntry.create!(class_id: 1, period_id: 2, subject_id: 5, wday: 3)
TimetableEntry.create!(class_id: 1, period_id: 3, subject_id: 3, wday: 3)
TimetableEntry.create!(class_id: 1, period_id: 1, subject_id: 6, wday: 4)  # 木曜
TimetableEntry.create!(class_id: 1, period_id: 2, subject_id: 4, wday: 4)
TimetableEntry.create!(class_id: 1, period_id: 3, subject_id: 1, wday: 4)
TimetableEntry.create!(class_id: 1, period_id: 1, subject_id: 7, wday: 5)  # 金曜
TimetableEntry.create!(class_id: 1, period_id: 2, subject_id: 7, wday: 5)

# ===== 二年生後期（Rubyコース） =====
TimetableEntry.create!(class_id: 2, period_id: 1, subject_id: 20, wday: 1)
TimetableEntry.create!(class_id: 2, period_id: 2, subject_id: 20, wday: 1)
TimetableEntry.create!(class_id: 2, period_id: 3, subject_id: 19, wday: 1)
TimetableEntry.create!(class_id: 2, period_id: 1, subject_id: 23, wday: 2)
TimetableEntry.create!(class_id: 2, period_id: 2, subject_id: 23, wday: 2)
TimetableEntry.create!(class_id: 2, period_id: 3, subject_id: 18, wday: 2)
TimetableEntry.create!(class_id: 2, period_id: 1, subject_id: 18, wday: 3)
TimetableEntry.create!(class_id: 2, period_id: 2, subject_id: 21, wday: 3)
TimetableEntry.create!(class_id: 2, period_id: 3, subject_id: 21, wday: 3)
TimetableEntry.create!(class_id: 2, period_id: 1, subject_id: 22, wday: 4)
TimetableEntry.create!(class_id: 2, period_id: 2, subject_id: 22, wday: 4)
TimetableEntry.create!(class_id: 2, period_id: 3, subject_id: 23, wday: 4)
TimetableEntry.create!(class_id: 2, period_id: 1, subject_id: 24, wday: 5)
TimetableEntry.create!(class_id: 2, period_id: 2, subject_id: 24, wday: 5)

# ===== 教員アカウント =====
User.create!(password: "teacher123")
