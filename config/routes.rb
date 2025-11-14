Rails.application.routes.draw do
  get "sessions/new"
  get "timetables/student", to: "timetables#student", as: "timetables_student"

  get "timetables/teacher", to: "timetables#teacher", as: "timetables_teacher"

  resources :timetable_entries, only: [:edit, :update]

  resource :timetable_change_request, only: [:edit, :update]

  root to: "timetables#student"

  get    "teacher_login", to: "sessions#new",     as: "teacher_login"
  post   "teacher_login", to: "sessions#create"
  delete "logout",        to: "sessions#destroy"
end
