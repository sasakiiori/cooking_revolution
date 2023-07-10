Rails.application.routes.draw do
  devise_for :customers
  devise_for :administrators, path: :admin, controllers: {
    sessions: 'admin/administrators/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  root to: 'customers#top'
  
  resources :posts
end
