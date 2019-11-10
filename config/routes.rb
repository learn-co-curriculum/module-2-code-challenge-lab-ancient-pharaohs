Rails.application.routes.draw do
  get '/pyramids', to: 'pyramids#index'
  get '/pharaohs', to: 'pharaohs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
