Rails.application.routes.draw do
  
  mount ActionCable.server => "/cable"

  namespace :api do 
    namespace :v1 do 
      post "/send-message", to: "messages#send_message"
    end
  end
  
end
