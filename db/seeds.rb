# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user.create(password: aaaaaaaa)
subject.create(subject_name: グループマネジメントⅡ, color: white) #1
subject.create(subject_name: WebデザインⅢ, color: white) #2
subject.create(subject_name: JavaScriptⅡ, color: white) #3
subject.create(subject_name: 国家試験対策Ⅲ, color: white) #4
subject.create(subject_name: 総合実践Ⅲ, color: white) #5
subject.create(subject_name: PythonⅠ, color: white) #6
subject.create(subject_name: RailsⅠ, color: white) #7
subject.create(subject_name: RubyⅠ, color: white) #8
subject.create(subject_name: JavaⅠ, color: white) #9
subject.create(subject_name: AndroidⅠ, color: white) #10
subject.create(subject_name: キャリア演習Ⅱ, color: white) #11
subject.create(subject_name: 企業講演会Ⅱ, color: white) #12
subject.create(subject_name: 総合体育Ⅲ, color: white) #13
subject.create(subject_name: 式典出席, color: white) #14
subject.create(subject_name: 実践ボランティアⅡ, color: white) #15

subject.create(subject_name: 企業体験実習Ⅱ, color: white) #16
subject.create(subject_name: 制作演習Ⅱ, color: white) #17
subject.create(subject_name: メディア制作Ⅰ, color: white) #18
subject.create(subject_name: JSPⅠ, color: white) #19
subject.create(subject_name: WebデザインⅣ, color: white) #20
subject.create(subject_name: 国家試験対策Ⅳ, color: white) #21
subject.create(subject_name: プレゼンテーションⅠ, color: white) #22
subject.create(subject_name: 卒業研究Ⅰ, color: white) #23
subject.create(subject_name: 総合実践Ⅳ, color: white) #24
subject.create(subject_name: RubyⅡ, color: white) #25
subject.create(subject_name: RailsⅡ, color: white) #26
subject.create(subject_name: JavaⅡ, color: white) #27
subject.create(subject_name: AndroidⅡ, color: white) #28
subject.create(subject_name: キャリア演習Ⅱ, color: white) #29
subject.create(subject_name: 企業講演会Ⅱ, color: white) #30
subject.create(subject_name: 企画マネジメントⅡ, color: white) #31
subject.create(subject_name: ボランティア活動Ⅱ, color: white) #32

#二年生前期（Rubyコース）
timetable_entrie.cerate(class_id: 1, period_id: 1, subject_id: 8, wday: 月)
timetable_entrie.cerate(class_id: 1, period_id: 2, subject_id: 8, wday: 月)
timetable_entrie.cerate(class_id: 1, period_id: 3, subject_id: 6, wday: 月)
timetable_entrie.cerate(class_id: 1, period_id: 1, subject_id: 3, wday: 火)
timetable_entrie.cerate(class_id: 1, period_id: 2, subject_id: 3, wday: 火)
timetable_entrie.cerate(class_id: 1, period_id: 3, subject_id: 4, wday: 火)
timetable_entrie.cerate(class_id: 1, period_id: 1, subject_id: 5, wday: 水)
timetable_entrie.cerate(class_id: 1, period_id: 2, subject_id: 5, wday: 水)
timetable_entrie.cerate(class_id: 1, period_id: 3, subject_id: 3, wday: 水)
timetable_entrie.cerate(class_id: 1, period_id: 1, subject_id: 6, wday: 木)
timetable_entrie.cerate(class_id: 1, period_id: 2, subject_id: 4, wday: 木)
timetable_entrie.cerate(class_id: 1, period_id: 3, subject_id: 1, wday: 木)
timetable_entrie.cerate(class_id: 1, period_id: 1, subject_id: 7, wday: 金)
timetable_entrie.cerate(class_id: 1, period_id: 2, subject_id: 7, wday: 金)

#二年生前期（Javaコース）
timetable_entrie.cerate(class_id: 1, period_id: 1, subject_id: 9, wday: 月)
timetable_entrie.cerate(class_id: 1, period_id: 2, subject_id: 9, wday: 月)
timetable_entrie.cerate(class_id: 1, period_id: 3, subject_id: 6, wday: 月)
timetable_entrie.cerate(class_id: 1, period_id: 1, subject_id: 3, wday: 火)
timetable_entrie.cerate(class_id: 1, period_id: 2, subject_id: 3, wday: 火)
timetable_entrie.cerate(class_id: 1, period_id: 3, subject_id: 4, wday: 火)
timetable_entrie.cerate(class_id: 1, period_id: 1, subject_id: 5, wday: 水)
timetable_entrie.cerate(class_id: 1, period_id: 2, subject_id: 5, wday: 水)
timetable_entrie.cerate(class_id: 1, period_id: 3, subject_id: 3, wday: 水)
timetable_entrie.cerate(class_id: 1, period_id: 1, subject_id: 6, wday: 木)
timetable_entrie.cerate(class_id: 1, period_id: 2, subject_id: 4, wday: 木)
timetable_entrie.cerate(class_id: 1, period_id: 3, subject_id: 1, wday: 木)
timetable_entrie.cerate(class_id: 1, period_id: 1, subject_id: 10, wday: 金)
timetable_entrie.cerate(class_id: 1, period_id: 2, subject_id: 10, wday: 金)

#二年生後期（Rubyコース）
timetable_entrie.cerate(class_id: 2, period_id: 1, subject_id: 22, wday: 月)
timetable_entrie.cerate(class_id: 2, period_id: 2, subject_id: 22, wday: 月)
timetable_entrie.cerate(class_id: 2, period_id: 3, subject_id: 20, wday: 月)
timetable_entrie.cerate(class_id: 2, period_id: 1, subject_id: 25, wday: 火)
timetable_entrie.cerate(class_id: 2, period_id: 2, subject_id: 25, wday: 火)
timetable_entrie.cerate(class_id: 2, period_id: 3, subject_id: 20, wday: 火)
timetable_entrie.cerate(class_id: 2, period_id: 1, subject_id: 20, wday: 水)
timetable_entrie.cerate(class_id: 2, period_id: 2, subject_id: 23, wday: 水)
timetable_entrie.cerate(class_id: 2, period_id: 3, subject_id: 23, wday: 水)
timetable_entrie.cerate(class_id: 2, period_id: 1, subject_id: 24, wday: 木)
timetable_entrie.cerate(class_id: 2, period_id: 2, subject_id: 24, wday: 木)
timetable_entrie.cerate(class_id: 2, period_id: 3, subject_id: 25, wday: 木)
timetable_entrie.cerate(class_id: 2, period_id: 1, subject_id: 26, wday: 金)
timetable_entrie.cerate(class_id: 2, period_id: 2, subject_id: 26, wday: 金)

#二年生後期（Javaコース）
timetable_entrie.cerate(class_id: 2, period_id: 1, subject_id: 22, wday: 月)
timetable_entrie.cerate(class_id: 2, period_id: 2, subject_id: 22, wday: 月)
timetable_entrie.cerate(class_id: 2, period_id: 3, subject_id: 20, wday: 月)
timetable_entrie.cerate(class_id: 2, period_id: 1, subject_id: 27, wday: 火)
timetable_entrie.cerate(class_id: 2, period_id: 2, subject_id: 27, wday: 火)
timetable_entrie.cerate(class_id: 2, period_id: 3, subject_id: 20, wday: 火)
timetable_entrie.cerate(class_id: 2, period_id: 1, subject_id: 20, wday: 水)
timetable_entrie.cerate(class_id: 2, period_id: 2, subject_id: 23, wday: 水)
timetable_entrie.cerate(class_id: 2, period_id: 3, subject_id: 23, wday: 水)
timetable_entrie.cerate(class_id: 2, period_id: 1, subject_id: 24, wday: 木)
timetable_entrie.cerate(class_id: 2, period_id: 2, subject_id: 24, wday: 木)
timetable_entrie.cerate(class_id: 2, period_id: 3, subject_id: 25, wday: 木)
timetable_entrie.cerate(class_id: 2, period_id: 1, subject_id: 28, wday: 金)
timetable_entrie.cerate(class_id: 2, period_id: 2, subject_id: 28, wday: 金)