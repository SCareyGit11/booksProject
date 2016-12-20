Rails.application.routes.draw do
  get 'likes/new'

  get 'interesteds/new'

  get 'interesteds/index'

  get 'interesteds/show'

  get 'currents/new'

  get 'currents/index'

  get 'currents/show'

  get 'reads/new'

  get 'reads/index'

  get 'reads/show'

  get 'comments/new'

  get 'comments/index'

  get 'comments/show'

  post 'comments' => 'comments#create'

  get 'sessions/new'

  post 'sessions' => 'sessions#create'

  delete 'sessions/:id' => 'sessions#delete'

  get 'books/new'

  get 'books/show'

  get 'books' => 'books#index'

  post 'books' => 'books#create'

  get 'books/:id' => 'books#show'

  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'users/edit'

  post 'users' => 'users#create'

  get 'users/:id' => 'users#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
