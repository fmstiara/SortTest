Rails.application.routes.draw do
  root to: 'root#index'
  post '/user/sort', to: 'root#sort', as: 'user_sort'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
