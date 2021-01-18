Rails.application.routes.draw do
  
   # get ':controller(/:action(/:id(.:format)))'

  root to: "welcome#index"
  get 'my_tricks', to: 'tricks#user_tricks'
  get 'give_rewards', to: 'rewards#users_tricks'
  get 'rewards/give_rewards', to: 'rewards#give_rewards'
  get 'my_rewards', to: 'rewards#customers_rewards'

 

  resources :challenges 
  resources :tricks

  devise_for :customers, :controllers => { :registrations => :registrations } 

  devise_for :brands,    :controllers => { :registrations => :registrations }

end
