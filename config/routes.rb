Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :posts
  post '/rails/active_storage/direct_uploads' => 'direct_uploads#create'
end
