Rails.application.routes.draw do
  devise_for :users
  resources :topics
  resources :entries
  resources :users, only: [:update, :show]

  get 'tags/:tag', to: 'entries#index', as: :tag

  root to: 'welcome#index'

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'admin' => 'topics#admin'

end
