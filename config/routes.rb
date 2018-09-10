Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :events 
      resources :calendar_dates
      resources :event_dates 
    end 
  end 
end
