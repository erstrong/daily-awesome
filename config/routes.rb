Rails.application.routes.draw do
  devise_for :users
  resources :topics
  resources :entries

  root to: 'welcome#index'

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

end
