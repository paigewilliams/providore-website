Rails.application.routes.draw do
  root :to => 'products#landing'
  resources :products do
    resources :reviews, :except => [:show, :index]
  end
end
