Rails.application.routes.draw do
  resources :blogposts, except: [:new, :edit] do
    resources :comments, except: [:new, :edit]
  end
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
