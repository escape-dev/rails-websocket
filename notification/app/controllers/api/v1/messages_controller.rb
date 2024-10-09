class Api::V1::MessagesController < ApplicationController
  
  def send_message
    ActionCable.server.broadcast "messages_channel", "Someone Send from Postman"

    render json: { message: "OK" }, status: :ok
  end

end
