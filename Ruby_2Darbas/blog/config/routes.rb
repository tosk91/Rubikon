Rails.application.routes.draw do
  get 'other/data'

  get 'main/home'

  get 'main/about'

  get 'main/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'main#home'

  get 'aboutit', to: 'main#about'
  get 'data', to: 'other#data'
end
