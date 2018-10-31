Rails.application.routes.draw do
  resources :posts
  post '/rails/active_storage/direct_uploads' => 'direct_uploads#create'
end
