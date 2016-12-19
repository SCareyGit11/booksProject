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

  get 'sessions/new'

  get 'books/new'

  get 'books/show'

  get 'books/index'

  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'users/edit'

  get 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
