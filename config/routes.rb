Rails.application.routes.draw do
 
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "welcomes#index" , as: :welcome
  
  get "/drivers" , controller: :drivers , action: :index 
  get "/riders" , to:"riders#index"
  get "/rides/waiting" , to: "rides#waiting" , as: :waiting
  get "/booking_requests/accept" , controller: :booking_requests , action: :accept , as: :accept
  get "/rides/drivers_ride" , controller: :rides , action: :drivers_ride , as: :drivers_ride
  resources :booking_requests
  resources :locations
  resources :rides
  resources :payment_descriptions

end
