Rails.application.routes.draw do
  get 'sessions/new'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get '/contact' ,to: 'home#contact'
  get '/login', to: 'user#login'
  post '/login', to: 'user#verify'


  get '/signup', to: 'user#signup'
  post '/signup', to: 'user#create'
  get 'user/payment', to: 'user#payment'
  post 'user/payment', to: 'user#payment'
  get '/about' ,to: 'home#about'
  get '/bridalcollection', to: 'costumes#bridalcollection'
  get '/partywear', to: 'costumes#partywear'
  get '/westerndresses', to: 'costumes#westerndresses'
  get '/fancydresses', to: 'costumes#fancydresses'
  get '/winterwear', to: 'costumes#winterwear'

  resources :home
  resources :user

  root "home#index"
end

