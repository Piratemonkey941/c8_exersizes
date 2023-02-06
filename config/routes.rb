Rails.application.routes.draw do
  get 'job_postings/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :job_postings, only: :index
  
end
