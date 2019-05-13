Rails.application.routes.draw do
  
  root 'schools#index', as: 'home'
  
  resources :schools
  
  resources :categories
  
  resources :clubs do
    resources :events
  end
  
  devise_for :users do
    get '/users/' => 'users#index'
    get '/users/sign_in' => 'devise/sessions#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  # mount Ckeditor::Engine => '/ckeditor'
    
end