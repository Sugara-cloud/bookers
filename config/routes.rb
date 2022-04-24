Rails.application.routes.draw do
  resources :books
  post 'books' => 'books#create'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  get 'books/:id/edit' => 'books#edit'
  root to: 'books#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
