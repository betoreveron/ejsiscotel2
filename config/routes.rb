Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/user_person/search_user', to: 'user_person#search_user'
  get '/user_person/list_user', to: 'user_person#list_user'
  get '/user_person/new', to: 'user_person#new'
  post '/user_person', to: 'user_person#create_user'
  get '/user_person/edit_user', to: 'user_person#edit_user'
  get '/user_person/update_user', to: 'user_person#update_user'
  get '/user_person/delete_user', to: 'user_person#delete_user'
end
