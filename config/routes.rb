Rails.application.routes.draw do
  root 'kvitters#top'
  
  resources :kvitters do
    collection do
      post :confirm
    end
  end
end
