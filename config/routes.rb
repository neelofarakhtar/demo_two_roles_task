Rails.application.routes.draw do
  get 'masters/index'
  get 'masters/new'
  get 'masters/create'
  get 'masters/delete'
  get 'students/new'
  post 'students/create'
  get 'students/show'
  get 'subjects/show'
  root 'users#index'
  devise_for :users, controllers: {
        registrations: 'users/registrations',
      sessions: 'users/sessions' }
  resources :users, only: [] do
  patch :accept
  patch :reject
  get :subject_edit
  get '/welcome', to: "users#welcome"
end
resources :subjects
resources :users do
resource :classrooms
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
