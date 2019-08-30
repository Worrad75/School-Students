Rails.application.routes.draw do

  get '/students', to: "students#index"
  get '/students/new', to: 'students#new', as: 'new_student'
  get '/students/:id', to: 'students#show', as: 'student'
  post '/students', to: 'students#create'
  get '/students/:id/edit', to: 'students#edit'
  patch '/students/:id', to: 'students#update'
  delete '/students/:id', to: 'students#delete'


  get '/schools', to: "schools#index"
  get '/schools/:id', to: 'schools#show', as: 'school'
  
  
end
