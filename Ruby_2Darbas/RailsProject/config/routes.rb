Rails.application.routes.draw do
  devise_for :u_sers
  get 'welcome/index'
  resources :articles do
    resources :comments
  end
  root 'welcome#index'
end
