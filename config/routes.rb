Rails.application.routes.draw do
  get "sessions/new"
  get "timetables/student", to: "timetables#student"
  get "timetables/teacher", to: "timetables#teacher"

  root to: "timetables#student"
  get "teacher_login", to: "sessions#new", as: "teacher_login"
  post "teacher_login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
