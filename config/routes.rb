Rails.application.routes.draw do
  get 'project/index'

  root to: 'todos#index'
  post '/' => 'todos#create'
  get 'todos/index'

  get 'todos/update'

  get 'todos/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
