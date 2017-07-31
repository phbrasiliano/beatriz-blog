Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :posts do
    resources :comments
  end

  root "posts#index"

  get '/sobre', to: 'pages#sobre'
end
