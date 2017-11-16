Rails.application.routes.draw do
  get '/keyboard' => 'chat#keyboard_init'

  post '/message' => 'chat#chat_control'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
