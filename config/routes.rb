Rails.application.routes.draw do
  get 'resultado/index'

  get 'alojamiento/index'

  get 'alquiler/index'

  get 'venta/index'

  resources :inmuebles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'creatives#index'
  
end
