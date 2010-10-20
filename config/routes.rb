Zad2::Application.routes.draw do
  
resources :firms do
  resources :workers
end

root :to => "firms#index"
   
end
