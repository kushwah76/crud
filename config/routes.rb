Rails.application.routes.draw do
  get 'student/index'
  get 'student/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #*************************************

  # root "articles#index"
   #get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  
  #*********************************
  #esourceful Routing
  root "articles#index"
   get '/ankit', to:'articles#ankit'
  resources :articles do 
    resources :comments
  end
end
