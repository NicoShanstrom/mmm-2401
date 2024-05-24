Rails.application.routes.draw do
  root "welcome#index"
  
  scope :fdc do
    scope :v1 do
      resources :foods, only: [:index, :show]
    end
  end
end
