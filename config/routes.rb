Rails.application.routes.draw do
  resources :events 
  resources :calendar_dates
  resources :event_dates 
  
end
