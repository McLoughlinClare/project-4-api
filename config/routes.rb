Rails.application.routes.draw do




  scope :api do
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'teacher_authentications/teacher_register'
    post 'teacher_authentications/teacher_login'
    resources :users
    resources :schools
    resources :solutions
    resources :challenges
    resources :topics
    resources :teachers
    resources :students
  end
end
