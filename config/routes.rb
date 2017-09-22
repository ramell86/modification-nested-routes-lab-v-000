Rails.application.routes.draw do
  resources :artists, only: [:index, :show, :new] do
    resources :songs, only: [:index, :show, :new, :edit]
  end
  resources :songs
end
