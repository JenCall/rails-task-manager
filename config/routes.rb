Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # list all tasks
  get '/tasks', to: 'tasks#index'

  # add a new task
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  # view the details of a task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # edit a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch '/tasks/:id', to: 'tasks#update'

  # remove a task
  delete '/tasks/:id', to: 'tasks#destroy', as: :delete
end
